#include "radio.h"
#include "sensors.h"
#include <Adafruit_NeoPixel.h>
#include <Adafruit_SPIFlash.h>
#include <Adafruit_SPIFlash_FatFs.h>
#include <SPI.h>
#include <Scheduler.h>
#include <Servo.h>
#include <Adafruit_GPS.h>
#include <Wire.h>

// FLASH DEFS TEMPORARY NO TIME

#define FLASH_TYPE                                                             \
  SPIFLASHTYPE_W25Q16BV // Flash chip type.
// If you change this be
// sure to change the fatfs
// object type below to match.

#if (SPI_INTERFACES_COUNT == 1)
#define FLASH_SS SS        // Flash chip SS pin.
#define FLASH_SPI_PORT SPI // What SPI port is Flash on?
#else
#define FLASH_SS SS1        // Flash chip SS pin.
#define FLASH_SPI_PORT SPI1 // What SPI port is Flash on?
#endif

// defining raven pins
#define R0A 10
#define R0B 11
#define R1A 12
#define R1B 13

// what's the name of the hardware serial port?
#define GPSSerial Serial1

// Connect to the GPS on the hardware port
Adafruit_GPS GPS(&GPSSerial);
#define GPSECHO false

#define PACKET_SIZE                                                            \
  70 // this is for optimization and ease of programming reasons... must be
// updated :(
#define WRITE_BUFFER_SIZE (2048 / PACKET_SIZE) * PACKET_SIZE

// setting debug stuff
#define DEBUG false
int divisor = 3;

// suspecting a race condition in the compiler or something else insane because
// this has to be moved sometimes for it to compile :O
union fusion_t {
  float f;
  int i;
  long l;
  uint8_t b[sizeof(long)];
};

// VERY TEMPORARY MEMORY CHECKING THING
#ifdef __arm__
// should use uinstd.h to define sbrk but Due causes a conflict
extern "C" char *sbrk(int incr);
#else  // __ARM__
extern char *__brkval;
#endif // __arm__

int freeMemory() {
  char top;
#ifdef __arm__
  return &top - reinterpret_cast<char *>(sbrk(0));
#elif defined(CORE_TEENSY) || (ARDUINO > 103 && ARDUINO != 151)
  return &top - __brkval;
#else  // __arm__
  return __brkval ? &top - __brkval : &top - __malloc_heap_start;
#endif // __arm__
}

// TEMPORARY
Adafruit_SPIFlash flash(FLASH_SS, &FLASH_SPI_PORT); // Use hardware SPI

// Alternatively you can define and use non-SPI pins!
// Adafruit_SPIFlash flash(FLASH_SCK, FLASH_MISO, FLASH_MOSI, FLASH_SS);

Adafruit_M0_Express_CircuitPython fatfs(flash);
// END TEMPORARY

// variables to store values for each pin
volatile int val0a = 0;
volatile int val0b = 0;
volatile int val1a = 0;
volatile int val1b = 0;

using namespace nustars;

Altimeter *alt;
IMU *imux;
ADXL *adxl;
Radio *radio;

Adafruit_NeoPixel led = Adafruit_NeoPixel(1, 8);

Servo servo;

uint8_t packetBuffer[PACKET_SIZE];
uint8_t writeBuffer[WRITE_BUFFER_SIZE]; // create the buffer of the size which
// is the max multiple of packet size
uint8_t writeBufferCopy[WRITE_BUFFER_SIZE]; // mind the stack frame limits,
// that's why this HAS to be global.
// Heap fragmentation not worth risk.
int wbPos =
  0; // henceforth this is now a RING BUFFER by royal decree on 2019-4-12
int bufferLocation; // for packetBuffer

char *tag = "NUx ";
int tagLength = 4;

uint8_t checksum; // the wireless checksum as byte

char *fn; // file name for the flash cell

// placing a variable here broke the union somehow, be cautious :(

fusion_t fusion;

volatile bool radioLock =
  false; // for communication between the main loop and radio signal loop
volatile bool writeSignal =
  false; // for communicaiton between the main loop and the write routine,
// this essentially makes it a non-blocking conditional execution

double base_acc;

int lastRaven = 0;

volatile int servoPos;

volatile bool deployed = false;

void setup() {
  if (DEBUG) {
    divisor = 4;
  }

  led.begin();
  setLED(255 / divisor, 0, 0); // RED: we are booting

  Serial.begin(115200);

  // wait for serial connection if we are in debug mode
  if (DEBUG) {
    while (!Serial)
      ;
  }
  Wire.begin();
  servo.attach(5);
  delay(1000);

  servoPos = 600;

  // TEMPORARY WRITING
  // Initialize flash library and check its chip ID.
  if (!flash.begin(FLASH_TYPE)) {
    Serial.println("Error, failed to initialize flash chip!");
    while (1)
      ;
  }
  Serial.print("Flash chip JEDEC ID: 0x");
  Serial.println(flash.GetJEDECID(), HEX);

  // First call begin to mount the filesystem.  Check that it returns true
  // to make sure the filesystem was mounted.
  if (!fatfs.begin()) {
    Serial.println("Error, failed to mount filesystem!");
    Serial.println(
      "Chip must be flashed with CircuitPython before use! Otherwise, this "
      "error may indicate a previous write panic.");
    while (1)
      ;
  }
  Serial.println("Mounted filesystem!");

  int dataID = 0;
  fn = (char *)calloc(20, 1);
  do {
    sprintf(fn, "data%d.hex\0", dataID);
    Serial.println("finding:");
    Serial.println(fn);
    dataID++;
  } while (fatfs.exists(fn));

  Adafruit_SPIFlash_FAT::File writeFile = fatfs.open(fn, FILE_WRITE);
  if (!writeFile) {
    Serial.println("Couldn't open the file!? WHyAsd?");
    while (1)
      ;
  }
  writeFile.close();
  Serial.print("found file that doesn't exist yet: ");
  Serial.println(fn);

  // END TEMPORARY

  // 9600 NMEA is the default baud rate for Adafruit MTK GPS's- some use 4800
  GPS.begin(9600);
  // uncomment this line to turn on RMC (recommended minimum) and GGA (fix data) including altitude
  GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCGGA);
  // uncomment this line to turn on only the "minimum recommended" data
  //GPS.sendCommand(PMTK_SET_NMEA_OUTPUT_RMCONLY);
  // For parsing data, we don't suggest using anything but either RMC only or RMC+GGA since
  // the parser doesn't care about other sentences at this time
  // Set the update rate
  GPS.sendCommand(PMTK_SET_NMEA_UPDATE_1HZ); // 1 Hz update rate
  // For the parsing code to work nicely and have time to sort thru the data, and
  // print it out we don't suggest using anything higher than 1 Hz
     
  // Request updates on antenna status, comment out to keep quiet
  GPS.sendCommand(PGCMD_ANTENNA);
  delay(500);
  
  // Ask for firmware version
  GPSSerial.println(PMTK_Q_RELEASE);
  Serial.println("Q: When");
  alt = new Altimeter();
  Serial.println("do");
  imux = new IMU();
  Serial.println("we");
  adxl = new ADXL(A1, A2, A3);
  Serial.println("all");
  radio = new Radio(A5, A4, A0);
  Serial.println("end?");

  Serial.println("A: Not today!");
  for (int i = 0; i < tagLength; i++) {
    packetBuffer[i] = tag[i];
  }

  // Raven detection pins
  pinMode(R0A, INPUT);
  pinMode(R0B, INPUT);
  pinMode(R1A, INPUT);
  pinMode(R1B, INPUT);

  setLED(120 / divisor, 120 / divisor, 0); // YELLOW: calibrate

  base_acc = 0;
  for (int i = 0; i < 20; i++) {
    imux->tick();
    ;
    base_acc +=
      sqrt(imux->getAcceleration(Y_AXIS) * imux->getAcceleration(Y_AXIS) +
           imux->getAcceleration(X_AXIS) * imux->getAcceleration(X_AXIS) +
           imux->getAcceleration(Z_AXIS) * imux->getAcceleration(Z_AXIS));
    delay(200);
  }

  base_acc /= 19;

  Serial.println(base_acc);

  for (int i = 30; i >= 25; i--) {
    servo.write(i);
    delay(20);
  }

  delay(1000);

  Scheduler.startLoop(writeFlash);
  Scheduler.startLoop(writeRadio);
  // Scheduler.startLoop(servoSend);

  Serial.println("finished setup");
  setLED(80 / divisor, 0, 120 / divisor); // PURPLE: everything okay
}

double moveTheAverage(double xn2, double xn1, double x0, double x1, double x2) {
  return (xn1 + x0 + x1 + (x2 + xn2) / 2) / 4;
}

double v = 0;
long lastdt = millis();

float maxAcc = 0;

void loop() {
  char c = GPS.read();
  // update the sensors
  if (GPS.newNMEAreceived()) {
    GPS.parse(GPS.lastNMEA());
  }
  alt->tick();
  imux->tick();
  adxl->tick();

  if (!radioLock) { // we are only interested in flashing data which is
    // also transmitted at these rates
    bufferLocation = tagLength; // offset for packet identifying prefix

    checksum = 0; // clear the checksum!

    // WARNING: No verification is being done to ensure data length. Keep it
    // under byte limit please package the current time
    fusion.l = millis();
    pack(fusion, packetBuffer, bufferLocation, sizeof(long));

    // package the data from the IMUx
    fusion.f = imux->getAcceleration(X_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = imux->getAcceleration(Y_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = imux->getAcceleration(Z_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));

    // IMUx rotation

    fusion.f = imux->getOrientation(X_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = imux->getOrientation(Y_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = imux->getOrientation(Z_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));

    // ADXL acceleration
    fusion.f = adxl->getAcceleration(X_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = adxl->getAcceleration(Y_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = adxl->getAcceleration(Z_AXIS);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));

    // BMP
    fusion.f = alt->getPressure();
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = alt->getTemp();
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));

    // MaxAcc
    // maxAcc = (imux->getAcceleration(Y_AXIS)) > maxAcc - (maxAcc < 0) * 2 *
    // maxAcc) ? imux->getAcceleration(Y_AXIS) : maxAcc;
    double yAcc = (adxl->getAcceleration(Y_AXIS));
    maxAcc = abs(yAcc) > abs(maxAcc) ? abs(yAcc) : maxAcc;

    // GPS
    fusion.f = GPS.latitude;
    Serial.println(GPS.latitude);
    Serial.println(GPS.longitude);
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = GPS.longitude;
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = GPS.altitude;
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));
    fusion.f = (float)maxAcc;
    pack(fusion, packetBuffer, bufferLocation, sizeof(float));

    // Raven binary
    uint8_t raven = 0;
    val0a = digitalRead(R0A) == LOW;
    val0b = digitalRead(R0B) == LOW;
    val1a = digitalRead(R1A) == LOW;
    val1b = digitalRead(R1B) == LOW;

    raven |= val0a;
    raven |= val0b << 1;
    raven |= val1a << 2;
    raven |= val1b << 3;
    //Serial.println(raven);
    if (raven != lastRaven && !deployed) {
      //Serial.println(raven);
      if (val1b | val0b) {
        for (int i = 25; i < 75; i++) {
          servo.write(i);
          delay(20);
        }
        deployed = true;
      } else if (val1a | val0a) {
        for (int i = 25; i >= 75; i--) {
          servo.write(i);
          delay(20);
        }
        deployed = true;
      }
    } else {
      //Serial.println("LOL");
    }
    lastRaven = raven;

    fusion.b[0] = raven;
    pack(fusion, packetBuffer, bufferLocation, sizeof(uint8_t));

    // Finally, pack the checksum
    fusion.b[0] = checksum;
    uint8_t tmpsum = checksum; // note that this final pack call will reset the
    // checksum to 0 by nature of XOR...
    pack(fusion, packetBuffer, bufferLocation, sizeof(uint8_t));

    char msg[50];
    sprintf(msg, "Checksum: 0x%x\n\0", tmpsum);
    // Serial.write(msg);

    if (!writeSignal) // copy nothing if the thing is still waiting to do it!
      memcpy(writeBuffer + wbPos, packetBuffer, PACKET_SIZE);
    wbPos += PACKET_SIZE;
    if (WRITE_BUFFER_SIZE - wbPos <= PACKET_SIZE)
      writeSignal = true;
  }

  // maxAcc = (imux->getAcceleration(Y_AXIS)) > maxAcc - (maxAcc < 0) * 2 *
  // maxAcc) ? imux->getAcceleration(Y_AXIS) : maxAcc; yAcc =
  // (imux->getAcceleration(Y_AXIS)); maxAcc = abs(yAcc) > maxAcc ? abs(yAcc) :
  // maxAcc; Serial.println(maxAcc);
  // Serial.println(imux->getOrientation(X_AXIS));
  delay(5);
  yield(); // if you delete this the telemetry gods will kill you and your
  // family :(
}

// WARNING_TODO: this hasn't implemented the buffer duplication!
void writeFlash() {
  yield();
  if (writeSignal) {
    int cpyLen = wbPos + 1;
    memcpy(writeBufferCopy, writeBuffer, cpyLen);
    wbPos = 0;
    writeSignal = false;
    // long x = millis();
    Adafruit_SPIFlash_FAT::File writeFile = fatfs.open(fn, FILE_WRITE);
    if (!writeFile && DEBUG) {
      Serial.println("Error, failed to open file for writing!");
      while (1)
        ;
    } else if (writeFile) {
      writeFile.write(writeBufferCopy, cpyLen);
      writeFile.close();
    } else {
      setLED(255 / divisor, 255 / divisor, 0);
    }
    // Serial.println("--------------------------------WROTE");
    // //Serial.println(x - millis());
  }
  delay(10);
  yield();
}

/**
   Interesting note: the scheduler will not initiate this function until it has
   exited, so a stack overflow shouldn't be possible here. Therefore, we will
   let it just run aqap
*/
void writeRadio() {
  if (!radioLock) {
    //Serial.println("TRANSMIT!");
    radioLock = true; // signal the main loop not to update the packet buffer
    // while the radio is transmitting
    // consider making this a global (evil) so that it doesn't need to be
    // reallocated every time (possibly expensive!)
    uint8_t localBuffer[PACKET_SIZE]; // we create a local copy of the information
    // in case the main loop overwrites it during
    // scheduled time (conservative policy)
    long x = millis();
    memcpy(localBuffer, packetBuffer, PACKET_SIZE);
    radio->transmit(localBuffer, PACKET_SIZE);
    radioLock = false;
    //yield();
    delay(10);
    yield();
  }
}

volatile char sendlock = 0;

/**
   Packs fusion data into a buffer, incrementing index by size
   @param fuz fusion_t to pack
   @param buff buffer to place the data into
   @param index starting index of buff; incremented by size upon return
   @param size how many bytes of data to pack
*/
void pack(fusion_t fuz, uint8_t *buff, int &index, uint8_t size) {
  for (int i = 0; i < size; i++) {
    buff[index++] = fuz.b[i];
    checksum ^= fuz.b[i]; // XOR the checksum
  }
}

void setLED(uint8_t r, uint8_t g, uint8_t b) {
  led.setPixelColor(0, r / divisor, g / divisor, b / divisor);
  led.show();
}

/* //TODO: Implement this. Disabled to get things working for launch.
  void raven(){
    // read the pin
    val0a = digitalRead(r0a);
    val0b = digitalRead(r0b);
    val1a = digitalRead(r1a);
    val1b = digitalRead(r1b);
  }

*/
