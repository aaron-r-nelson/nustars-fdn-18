<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="11" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="M0">
<packages>
<package name="M0">
<pad name="EN" x="3.81" y="10.16" drill="0.9"/>
<pad name="USB" x="6.35" y="10.16" drill="0.9"/>
<pad name="13" x="8.89" y="10.16" drill="0.9"/>
<pad name="12" x="11.43" y="10.16" drill="0.9"/>
<pad name="11" x="13.97" y="10.16" drill="0.9"/>
<pad name="10" x="16.51" y="10.16" drill="0.9"/>
<pad name="9" x="19.05" y="10.16" drill="0.9"/>
<pad name="6" x="21.59" y="10.16" drill="0.9"/>
<pad name="5" x="24.13" y="10.16" drill="0.9"/>
<pad name="SCL" x="26.67" y="10.16" drill="0.9"/>
<pad name="SDA" x="29.21" y="10.16" drill="0.9"/>
<pad name="BAT" x="1.27" y="10.16" drill="0.9"/>
<pad name="GND_0" x="29.21" y="-10.16" drill="0.9"/>
<pad name="TX" x="26.67" y="-10.16" drill="0.9"/>
<pad name="RX" x="24.13" y="-10.16" drill="0.9"/>
<pad name="MO" x="21.59" y="-10.16" drill="0.9"/>
<pad name="MI" x="19.05" y="-10.16" drill="0.9"/>
<pad name="SCK" x="16.51" y="-10.16" drill="0.9"/>
<pad name="A5" x="13.97" y="-10.16" drill="0.9"/>
<pad name="A4" x="11.43" y="-10.16" drill="0.9"/>
<pad name="A3" x="8.89" y="-10.16" drill="0.9"/>
<pad name="A2" x="6.35" y="-10.16" drill="0.9"/>
<pad name="A1" x="3.81" y="-10.16" drill="0.9"/>
<pad name="A0" x="1.27" y="-10.16" drill="0.9"/>
<pad name="GND" x="-1.27" y="-10.16" drill="0.9"/>
<pad name="ARF" x="-3.81" y="-10.16" drill="0.9"/>
<pad name="3V" x="-6.35" y="-10.16" drill="0.9"/>
<pad name="RST" x="-8.89" y="-10.16" drill="0.9"/>
<wire x1="-12.7" y1="11.43" x2="33.02" y2="11.43" width="0.127" layer="21"/>
<wire x1="33.02" y1="11.43" x2="35.56" y2="8.89" width="0.127" layer="21" curve="-90"/>
<wire x1="35.56" y1="8.89" x2="35.56" y2="-8.89" width="0.127" layer="21"/>
<wire x1="35.56" y1="-8.89" x2="33.02" y2="-11.43" width="0.127" layer="21" curve="-90"/>
<wire x1="33.02" y1="-11.43" x2="-12.7" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-11.43" x2="-15.24" y2="-8.89" width="0.127" layer="21" curve="-90"/>
<wire x1="-15.24" y1="-8.89" x2="-15.24" y2="8.89" width="0.127" layer="21"/>
<wire x1="-15.24" y1="8.89" x2="-12.7" y2="11.43" width="0.127" layer="21" curve="-90"/>
<hole x="33.02" y="8.89" drill="2.54"/>
<hole x="33.02" y="-8.89" drill="2.54"/>
<pad name="A6" x="-12.7" y="8.89" drill="2.54"/>
<pad name="A7" x="-12.7" y="-8.89" drill="2.54"/>
<text x="-7.62" y="-1.27" size="1.778" layer="21">Feather M0</text>
</package>
<package name="BMP">
<wire x1="2.54" y1="0" x2="15.24" y2="0" width="0.127" layer="21"/>
<wire x1="15.24" y1="0" x2="17.78" y2="2.54" width="0.127" layer="21" curve="90"/>
<wire x1="17.78" y1="2.54" x2="17.78" y2="16.51" width="0.127" layer="21"/>
<wire x1="17.78" y1="16.51" x2="15.24" y2="19.05" width="0.127" layer="21" curve="90"/>
<wire x1="15.24" y1="19.05" x2="2.54" y2="19.05" width="0.127" layer="21"/>
<wire x1="2.54" y1="19.05" x2="0" y2="16.51" width="0.127" layer="21" curve="90"/>
<wire x1="0" y1="16.51" x2="0" y2="2.54" width="0.127" layer="21"/>
<wire x1="0" y1="2.54" x2="2.54" y2="0" width="0.127" layer="21" curve="90"/>
<pad name="VIN" x="1.27" y="2.54" drill="0.9"/>
<pad name="3VO" x="3.81" y="2.54" drill="0.9"/>
<pad name="GND" x="6.35" y="2.54" drill="0.9"/>
<pad name="SCK" x="8.89" y="2.54" drill="0.9"/>
<pad name="SDO" x="11.43" y="2.54" drill="0.9"/>
<pad name="SDI" x="13.97" y="2.54" drill="0.9"/>
<pad name="CS" x="16.51" y="2.54" drill="0.9"/>
<pad name="A8" x="2.54" y="16.51" drill="2.032"/>
<pad name="A9" x="15.24" y="16.51" drill="2.032"/>
<text x="8.89" y="17.78" size="1.27" layer="21" align="center">BMP280</text>
</package>
<package name="ADXL377">
<wire x1="2.54" y1="0" x2="0" y2="2.54" width="0.127" layer="21" curve="-90"/>
<wire x1="0" y1="2.54" x2="0" y2="16.51" width="0.127" layer="21"/>
<wire x1="0" y1="16.51" x2="2.54" y2="19.05" width="0.127" layer="21" curve="-90"/>
<wire x1="2.54" y1="19.05" x2="16.51" y2="19.05" width="0.127" layer="21"/>
<wire x1="16.51" y1="19.05" x2="19.05" y2="16.51" width="0.127" layer="21" curve="-90"/>
<wire x1="19.05" y1="16.51" x2="19.05" y2="2.54" width="0.127" layer="21"/>
<wire x1="19.05" y1="2.54" x2="16.51" y2="0" width="0.127" layer="21" curve="-90"/>
<wire x1="16.51" y1="0" x2="2.54" y2="0" width="0.127" layer="21"/>
<pad name="P$1" x="2.54" y="16.51" drill="2.54" diameter="3.81"/>
<pad name="P$2" x="16.51" y="16.51" drill="2.54" diameter="3.81"/>
<pad name="P$3" x="2.54" y="6.35" drill="2.54" diameter="3.81"/>
<pad name="P$4" x="16.51" y="6.35" drill="2.54" diameter="3.81"/>
<pad name="VIN" x="1.905" y="2.032" drill="0.9"/>
<pad name="3V" x="4.445" y="2.032" drill="0.9"/>
<pad name="GND" x="6.985" y="2.032" drill="0.9"/>
<pad name="T" x="9.525" y="2.032" drill="0.9"/>
<pad name="Z" x="12.065" y="2.032" drill="0.9"/>
<pad name="Y" x="14.605" y="2.032" drill="0.9"/>
<pad name="X" x="17.145" y="2.032" drill="0.9"/>
<text x="5.715" y="16.891" size="1.27" layer="21">ADXL377</text>
<dimension x1="0" y1="2.54" x2="19.05" y2="2.54" x3="9.525" y3="-2.54" textsize="1.27" layer="51" unit="inch"/>
<dimension x1="2.54" y1="0" x2="2.54" y2="19.05" x3="-3.81" y3="9.525" textsize="1.27" layer="51" unit="inch"/>
</package>
</packages>
<symbols>
<symbol name="M0">
<wire x1="12.7" y1="-30.48" x2="12.7" y2="50.8" width="0.254" layer="94"/>
<wire x1="12.7" y1="50.8" x2="-7.62" y2="50.8" width="0.254" layer="94"/>
<wire x1="-7.62" y1="50.8" x2="-7.62" y2="-30.48" width="0.254" layer="94"/>
<pin name="BAT" x="17.78" y="27.94" length="middle" rot="R180"/>
<pin name="EN" x="17.78" y="22.86" length="middle" rot="R180"/>
<pin name="USB" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="13" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="12" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="11" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="10" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="9" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="6" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="5" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="SCL" x="17.78" y="-22.86" length="middle" rot="R180"/>
<pin name="SDA" x="17.78" y="-27.94" length="middle" rot="R180"/>
<wire x1="-7.62" y1="-30.48" x2="12.7" y2="-30.48" width="0.254" layer="94"/>
<pin name="ARF" x="-12.7" y="38.1" length="middle"/>
<pin name="GND_0" x="-12.7" y="-27.94" length="middle"/>
<pin name="TX" x="-12.7" y="-22.86" length="middle"/>
<pin name="RX" x="-12.7" y="-17.78" length="middle"/>
<pin name="MI" x="-12.7" y="-12.7" length="middle"/>
<pin name="MO" x="-12.7" y="-7.62" length="middle"/>
<pin name="SCK" x="-12.7" y="-2.54" length="middle"/>
<pin name="A5" x="-12.7" y="2.54" length="middle"/>
<pin name="A4" x="-12.7" y="7.62" length="middle"/>
<pin name="A3" x="-12.7" y="12.7" length="middle"/>
<pin name="A2" x="-12.7" y="17.78" length="middle"/>
<pin name="A1" x="-12.7" y="22.86" length="middle"/>
<pin name="A0" x="-12.7" y="27.94" length="middle"/>
<pin name="GND" x="-12.7" y="33.02" length="middle"/>
<pin name="3V" x="-12.7" y="43.18" length="middle"/>
<pin name="RST" x="-12.7" y="48.26" length="middle"/>
<text x="5.08" y="48.26" size="2.54" layer="94" rot="R270">Feather M0</text>
</symbol>
<symbol name="BMP">
<wire x1="0" y1="0" x2="0" y2="15.24" width="0.254" layer="94"/>
<wire x1="0" y1="15.24" x2="35.56" y2="15.24" width="0.254" layer="94"/>
<wire x1="35.56" y1="15.24" x2="35.56" y2="0" width="0.254" layer="94"/>
<wire x1="35.56" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="VIN" x="2.54" y="-5.08" length="middle" rot="R90"/>
<pin name="3VO" x="7.62" y="-5.08" length="middle" rot="R90"/>
<pin name="GND" x="12.7" y="-5.08" length="middle" rot="R90"/>
<pin name="SCK" x="17.78" y="-5.08" length="middle" rot="R90"/>
<pin name="SDO" x="22.86" y="-5.08" length="middle" rot="R90"/>
<pin name="SDI" x="27.94" y="-5.08" length="middle" rot="R90"/>
<pin name="CS" x="33.02" y="-5.08" length="middle" rot="R90"/>
<text x="2.54" y="10.16" size="2.54" layer="94">BMP280</text>
</symbol>
<symbol name="ADXL377">
<pin name="VIN" x="2.54" y="-10.16" length="middle" rot="R180"/>
<pin name="3VO" x="2.54" y="-5.08" length="middle" rot="R180"/>
<pin name="GND" x="2.54" y="0" length="middle" rot="R180"/>
<pin name="ZOUT" x="2.54" y="10.16" length="middle" rot="R180"/>
<pin name="YOUT" x="2.54" y="15.24" length="middle" rot="R180"/>
<pin name="XOUT" x="2.54" y="20.32" length="middle" rot="R180"/>
<pin name="TEST" x="2.54" y="5.08" length="middle" rot="R180"/>
<wire x1="0" y1="25.4" x2="0" y2="-15.24" width="0.254" layer="94"/>
<wire x1="0" y1="-15.24" x2="-17.78" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-15.24" x2="-17.78" y2="25.4" width="0.254" layer="94"/>
<wire x1="-17.78" y1="25.4" x2="0" y2="25.4" width="0.254" layer="94"/>
<text x="-15.24" y="22.86" size="1.27" layer="94">ADXL326</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="M0">
<gates>
<gate name="G$1" symbol="M0" x="-43.18" y="-12.7"/>
</gates>
<devices>
<device name="" package="M0">
<connects>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="3V" pad="3V"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="9" pad="9"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="ARF" pad="ARF"/>
<connect gate="G$1" pin="BAT" pad="BAT"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND_0" pad="GND_0"/>
<connect gate="G$1" pin="MI" pad="MI"/>
<connect gate="G$1" pin="MO" pad="MO"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="USB" pad="USB"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BMP">
<gates>
<gate name="G$1" symbol="BMP" x="-25.4" y="2.54"/>
</gates>
<devices>
<device name="" package="BMP">
<connects>
<connect gate="G$1" pin="3VO" pad="3VO"/>
<connect gate="G$1" pin="CS" pad="CS"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SDI" pad="SDI"/>
<connect gate="G$1" pin="SDO" pad="SDO"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ADXL377">
<gates>
<gate name="G$1" symbol="ADXL377" x="0" y="2.54"/>
</gates>
<devices>
<device name="" package="ADXL377">
<connects>
<connect gate="G$1" pin="3VO" pad="3V"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="TEST" pad="T"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
<connect gate="G$1" pin="XOUT" pad="X"/>
<connect gate="G$1" pin="YOUT" pad="Y"/>
<connect gate="G$1" pin="ZOUT" pad="Z"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ULTGPS">
<packages>
<package name="ULTGPS">
<pad name="3.3V" x="-10.16" y="-14.986" drill="0.9"/>
<pad name="EN" x="-7.62" y="-14.986" drill="0.9"/>
<pad name="VBAT" x="-5.08" y="-14.986" drill="0.9"/>
<pad name="FIX" x="-2.54" y="-14.986" drill="0.9"/>
<pad name="TX" x="0" y="-14.986" drill="0.9"/>
<pad name="RX" x="2.54" y="-14.986" drill="0.9"/>
<pad name="GND" x="5.08" y="-14.986" drill="0.9"/>
<pad name="VIN" x="7.62" y="-14.986" drill="0.9"/>
<pad name="PPS" x="10.16" y="-14.986" drill="0.9"/>
<wire x1="-10.16" y1="-17.018" x2="-12.7" y2="-14.478" width="0.127" layer="21" curve="-90"/>
<wire x1="10.16" y1="-17.018" x2="12.7" y2="-14.478" width="0.127" layer="21" curve="90"/>
<wire x1="12.7" y1="-14.478" x2="12.7" y2="-13.97" width="0.127" layer="21"/>
<wire x1="-12.7" y1="14.478" x2="-10.16" y2="17.018" width="0.127" layer="21" curve="-90"/>
<wire x1="-10.16" y1="17.018" x2="-9.652" y2="17.018" width="0.127" layer="21"/>
<wire x1="-9.652" y1="17.018" x2="-9.144" y2="17.018" width="0.127" layer="21"/>
<wire x1="10.16" y1="17.018" x2="12.7" y2="14.478" width="0.127" layer="21" curve="-90"/>
<wire x1="12.7" y1="14.478" x2="12.7" y2="13.716" width="0.127" layer="21"/>
<wire x1="10.16" y1="17.018" x2="-9.144" y2="17.018" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-14.478" x2="-12.7" y2="14.478" width="0.127" layer="21"/>
<wire x1="12.7" y1="-13.97" x2="12.7" y2="13.716" width="0.127" layer="21"/>
<wire x1="-10.16" y1="-17.018" x2="10.16" y2="-17.018" width="0.127" layer="21"/>
<text x="-11.176" y="4.826" size="1.27" layer="21" rot="R270">Adafruit GPS</text>
<pad name="P$1" x="-10.16" y="14.478" drill="2.5" diameter="3.556"/>
<pad name="P$2" x="9.906" y="14.224" drill="2.5" diameter="3.556"/>
<dimension x1="-12.7" y1="14.478" x2="12.7" y2="14.478" x3="0" y3="18.415" textsize="1.27" layer="51" unit="inch"/>
<dimension x1="-10.16" y1="17.018" x2="-10.16" y2="-17.018" x3="-18.542" y3="0" textsize="1.27" layer="51" unit="inch"/>
<dimension x1="-10.16" y1="-14.986" x2="-10.16" y2="-17.018" x3="-13.716" y3="-16.002" textsize="1.27" layer="51" unit="inch"/>
</package>
</packages>
<symbols>
<symbol name="ULTGPS">
<wire x1="-27.94" y1="22.86" x2="-27.94" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-27.94" y1="-7.62" x2="17.78" y2="-7.62" width="0.254" layer="94"/>
<wire x1="17.78" y1="-7.62" x2="17.78" y2="22.86" width="0.254" layer="94"/>
<wire x1="17.78" y1="22.86" x2="-27.94" y2="22.86" width="0.254" layer="94"/>
<pin name="3.3V" x="-25.4" y="-10.16" length="middle" direction="out" rot="R90"/>
<pin name="EN" x="-20.32" y="-10.16" length="middle" direction="in" rot="R90"/>
<pin name="VBAT" x="-15.24" y="-10.16" length="middle" direction="in" rot="R90"/>
<pin name="FIX" x="-10.16" y="-10.16" length="middle" direction="out" rot="R90"/>
<pin name="TX" x="-5.08" y="-10.16" length="middle" direction="out" rot="R90"/>
<pin name="RX" x="0" y="-10.16" length="middle" direction="in" rot="R90"/>
<pin name="GND" x="5.08" y="-10.16" length="middle" direction="pwr" rot="R90"/>
<pin name="VIN" x="10.16" y="-10.16" length="middle" direction="in" rot="R90"/>
<pin name="PPS" x="15.24" y="-10.16" length="middle" direction="out" rot="R90"/>
<text x="-27.94" y="25.4" size="1.778" layer="95" align="top-left">ULTGPS</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ULTGPS">
<gates>
<gate name="G$1" symbol="ULTGPS" x="2.54" y="-5.08"/>
</gates>
<devices>
<device name="" package="ULTGPS">
<connects>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="EN" pad="EN"/>
<connect gate="G$1" pin="FIX" pad="FIX"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="PPS" pad="PPS"/>
<connect gate="G$1" pin="RX" pad="RX"/>
<connect gate="G$1" pin="TX" pad="TX"/>
<connect gate="G$1" pin="VBAT" pad="VBAT"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="BNO055">
<packages>
<package name="BNO055">
<wire x1="10.795" y1="-10.16" x2="-10.795" y2="-10.16" width="0.127" layer="21"/>
<wire x1="-13.335" y1="-7.62" x2="-13.335" y2="7.62" width="0.127" layer="21"/>
<wire x1="-10.795" y1="10.16" x2="10.795" y2="10.16" width="0.127" layer="21"/>
<pad name="GND" x="-1.27" y="-8.89" drill="0.9"/>
<pad name="3VO" x="-3.81" y="-8.89" drill="0.9"/>
<pad name="VIN" x="-6.35" y="-8.89" drill="0.9"/>
<pad name="SDA" x="1.27" y="-8.89" drill="0.9"/>
<pad name="SCL" x="3.81" y="-8.89" drill="0.9"/>
<pad name="RST" x="6.35" y="-8.89" drill="0.9"/>
<pad name="PS1" x="-1.27" y="8.89" drill="0.9"/>
<pad name="PS0" x="-3.81" y="8.89" drill="0.9"/>
<pad name="INT" x="1.27" y="8.89" drill="0.9"/>
<pad name="ADR" x="3.81" y="8.89" drill="0.9"/>
<wire x1="-13.335" y1="7.62" x2="-10.795" y2="10.16" width="0.127" layer="21" curve="-90"/>
<wire x1="10.795" y1="-10.16" x2="13.335" y2="-7.62" width="0.127" layer="21" curve="90"/>
<wire x1="13.335" y1="-7.62" x2="13.335" y2="7.62" width="0.127" layer="21"/>
<wire x1="13.335" y1="7.62" x2="10.795" y2="10.16" width="0.127" layer="21" curve="90"/>
<wire x1="-13.335" y1="-7.62" x2="-10.795" y2="-10.16" width="0.127" layer="21" curve="90"/>
<pad name="P$1" x="-10.795" y="7.62" drill="2.5" diameter="4.572"/>
<pad name="P$2" x="-10.795" y="-7.62" drill="2.5" diameter="4.572"/>
<pad name="P$3" x="10.795" y="7.62" drill="2.5" diameter="4.572"/>
<pad name="P$4" x="10.795" y="-7.62" drill="2.5" diameter="4.572"/>
<text x="-11.43" y="-3.175" size="1.27" layer="21" rot="R90">BNO055</text>
<dimension x1="-10.795" y1="10.16" x2="-10.795" y2="-10.16" x3="-17.78" y3="0" textsize="1.27" layer="51" unit="inch"/>
<dimension x1="-3.81" y1="-8.89" x2="-3.81" y2="8.89" x3="-15.24" y3="0" textsize="1.27" layer="51" unit="inch"/>
<dimension x1="-13.335" y1="7.62" x2="13.335" y2="6.985" x3="0" y3="12.7" textsize="1.27" layer="51" dtype="horizontal" unit="inch"/>
</package>
</packages>
<symbols>
<symbol name="BNO055">
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="-15.24" x2="-10.16" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-15.24" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<pin name="VIN" x="-12.7" y="12.7" length="middle"/>
<pin name="3V0" x="-12.7" y="7.62" length="middle"/>
<pin name="GND" x="-12.7" y="2.54" length="middle"/>
<pin name="SDA" x="-12.7" y="-2.54" length="middle"/>
<pin name="SCL" x="-12.7" y="-7.62" length="middle"/>
<pin name="RST" x="-12.7" y="-12.7" length="middle"/>
<pin name="PS0" x="12.7" y="7.62" length="middle" rot="R180"/>
<pin name="PS1" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="INT" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="ADR" x="12.7" y="-7.62" length="middle" rot="R180"/>
<text x="-10.16" y="17.78" size="1.778" layer="95" align="top-left">BNO055</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BNO055">
<gates>
<gate name="G$1" symbol="BNO055" x="0" y="0"/>
</gates>
<devices>
<device name="" package="BNO055">
<connects>
<connect gate="G$1" pin="3V0" pad="3VO"/>
<connect gate="G$1" pin="ADR" pad="ADR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="INT" pad="INT"/>
<connect gate="G$1" pin="PS0" pad="PS0"/>
<connect gate="G$1" pin="PS1" pad="PS1"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="wirepad" urn="urn:adsk.eagle:library:412">
<description>&lt;b&gt;Single Pads&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2,15/1,0" urn="urn:adsk.eagle:footprint:30813/1" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<wire x1="1.143" y1="-1.143" x2="1.143" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.143" y1="-1.143" x2="0.635" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="0.635" x2="1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="1.143" y1="1.143" x2="0.635" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.143" x2="-1.143" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="1.143" x2="-1.143" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-0.635" x2="-1.143" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="-1.143" x2="-0.635" y2="-1.143" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="1.016" width="0.1524" layer="51"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-1.143" y="1.397" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="0" y="1" size="0.0254" layer="27">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="2,15/1,0" urn="urn:adsk.eagle:package:30831/1" type="box" library_version="1">
<description>THROUGH-HOLE PAD</description>
<packageinstances>
<packageinstance name="2,15/1,0"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PAD" urn="urn:adsk.eagle:symbol:30808/1" library_version="1">
<wire x1="-1.016" y1="1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="-1.143" y="1.8542" size="1.778" layer="95">&gt;NAME</text>
<text x="-1.143" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2,15/1,0" urn="urn:adsk.eagle:component:30850/1" prefix="PAD" uservalue="yes" library_version="1">
<description>&lt;b&gt;THROUGH-HOLE PAD&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="PAD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2,15/1,0">
<connects>
<connect gate="1" pin="P" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:30831/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="M0" deviceset="M0" device=""/>
<part name="U$2" library="M0" deviceset="BMP" device=""/>
<part name="U$3" library="M0" deviceset="ADXL377" device=""/>
<part name="U$4" library="ULTGPS" deviceset="ULTGPS" device=""/>
<part name="U$5" library="BNO055" deviceset="BNO055" device=""/>
<part name="BAT_VIN" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="2,15/1,0" device="" package3d_urn="urn:adsk.eagle:package:30831/1"/>
<part name="3VOUT" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="2,15/1,0" device="" package3d_urn="urn:adsk.eagle:package:30831/1"/>
<part name="GND" library="wirepad" library_urn="urn:adsk.eagle:library:412" deviceset="2,15/1,0" device="" package3d_urn="urn:adsk.eagle:package:30831/1"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-2.54" y="38.1" smashed="yes"/>
<instance part="U$2" gate="G$1" x="63.5" y="78.74" smashed="yes"/>
<instance part="U$3" gate="G$1" x="83.82" y="22.86" smashed="yes"/>
<instance part="U$4" gate="G$1" x="154.94" y="66.04" smashed="yes"/>
<instance part="U$5" gate="G$1" x="134.62" y="12.7" smashed="yes"/>
<instance part="BAT_VIN" gate="1" x="22.86" y="63.5" smashed="yes">
<attribute name="NAME" x="21.717" y="65.3542" size="1.778" layer="95"/>
<attribute name="VALUE" x="21.717" y="60.198" size="1.778" layer="96"/>
</instance>
<instance part="3VOUT" gate="1" x="-20.32" y="101.6" smashed="yes">
<attribute name="NAME" x="-21.463" y="103.4542" size="1.778" layer="95"/>
<attribute name="VALUE" x="-21.463" y="98.298" size="1.778" layer="96"/>
</instance>
<instance part="GND" gate="1" x="-33.02" y="78.74" smashed="yes" rot="R180">
<attribute name="NAME" x="-31.877" y="76.8858" size="1.778" layer="95" rot="R180"/>
<attribute name="VALUE" x="-31.877" y="82.042" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3V"/>
<wire x1="-15.24" y1="81.28" x2="-25.4" y2="81.28" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="81.28" x2="-25.4" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="91.44" x2="-25.4" y2="96.52" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="96.52" x2="-17.78" y2="96.52" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VIN"/>
<wire x1="-17.78" y1="96.52" x2="43.18" y2="96.52" width="0.1524" layer="91"/>
<wire x1="43.18" y1="96.52" x2="43.18" y2="73.66" width="0.1524" layer="91"/>
<wire x1="43.18" y1="73.66" x2="50.8" y2="73.66" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="VIN"/>
<wire x1="50.8" y1="73.66" x2="66.04" y2="73.66" width="0.1524" layer="91"/>
<wire x1="86.36" y1="12.7" x2="86.36" y2="7.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="7.62" x2="86.36" y2="2.54" width="0.1524" layer="91"/>
<wire x1="86.36" y1="2.54" x2="50.8" y2="2.54" width="0.1524" layer="91"/>
<wire x1="50.8" y1="2.54" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<junction x="50.8" y="73.66"/>
<pinref part="U$5" gate="G$1" pin="VIN"/>
<wire x1="50.8" y1="50.8" x2="50.8" y2="73.66" width="0.1524" layer="91"/>
<wire x1="121.92" y1="25.4" x2="111.76" y2="25.4" width="0.1524" layer="91"/>
<wire x1="111.76" y1="25.4" x2="111.76" y2="7.62" width="0.1524" layer="91"/>
<wire x1="111.76" y1="7.62" x2="86.36" y2="7.62" width="0.1524" layer="91"/>
<junction x="86.36" y="7.62"/>
<pinref part="U$4" gate="G$1" pin="VIN"/>
<wire x1="165.1" y1="55.88" x2="165.1" y2="50.8" width="0.1524" layer="91"/>
<wire x1="165.1" y1="50.8" x2="50.8" y2="50.8" width="0.1524" layer="91"/>
<junction x="50.8" y="50.8"/>
<wire x1="-25.4" y1="91.44" x2="-22.86" y2="91.44" width="0.1524" layer="91"/>
<junction x="-25.4" y="91.44"/>
<label x="-22.86" y="91.44" size="1.778" layer="95"/>
<pinref part="3VOUT" gate="1" pin="P"/>
<wire x1="-17.78" y1="96.52" x2="-17.78" y2="101.6" width="0.1524" layer="91"/>
<junction x="-17.78" y="96.52"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="76.2" y1="73.66" x2="76.2" y2="66.04" width="0.1524" layer="91"/>
<wire x1="76.2" y1="66.04" x2="93.98" y2="66.04" width="0.1524" layer="91"/>
<wire x1="93.98" y1="66.04" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="93.98" y1="40.64" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<wire x1="93.98" y1="22.86" x2="86.36" y2="22.86" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="GND"/>
<wire x1="93.98" y1="40.64" x2="116.84" y2="40.64" width="0.1524" layer="91"/>
<wire x1="116.84" y1="40.64" x2="160.02" y2="40.64" width="0.1524" layer="91"/>
<wire x1="160.02" y1="40.64" x2="160.02" y2="55.88" width="0.1524" layer="91"/>
<junction x="93.98" y="40.64"/>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-15.24" y1="71.12" x2="-30.48" y2="71.12" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="71.12" x2="-30.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="66.04" x2="-30.48" y2="10.16" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="10.16" x2="-30.48" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="-30.48" y1="-5.08" x2="93.98" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="93.98" y1="-5.08" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<junction x="93.98" y="22.86"/>
<pinref part="U$5" gate="G$1" pin="GND"/>
<wire x1="116.84" y1="40.64" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="15.24" x2="121.92" y2="15.24" width="0.1524" layer="91"/>
<junction x="116.84" y="40.64"/>
<wire x1="-30.48" y1="71.12" x2="-30.48" y2="73.66" width="0.1524" layer="91"/>
<junction x="-30.48" y="71.12"/>
<label x="-30.48" y="73.66" size="1.778" layer="95"/>
<pinref part="U$1" gate="G$1" pin="GND_0"/>
<wire x1="-15.24" y1="10.16" x2="-30.48" y2="10.16" width="0.1524" layer="91"/>
<junction x="-30.48" y="10.16"/>
<pinref part="GND" gate="1" pin="P"/>
<wire x1="-35.56" y1="78.74" x2="-35.56" y2="66.04" width="0.1524" layer="91"/>
<wire x1="-35.56" y1="66.04" x2="-30.48" y2="66.04" width="0.1524" layer="91"/>
<junction x="-30.48" y="66.04"/>
</segment>
</net>
<net name="CLK" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SCL"/>
<wire x1="15.24" y1="15.24" x2="35.56" y2="15.24" width="0.1524" layer="91"/>
<wire x1="35.56" y1="15.24" x2="35.56" y2="63.5" width="0.1524" layer="91"/>
<wire x1="35.56" y1="63.5" x2="81.28" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="SCK"/>
<wire x1="81.28" y1="63.5" x2="81.28" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="SCL"/>
<wire x1="121.92" y1="5.08" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="5.08" x2="116.84" y2="-2.54" width="0.1524" layer="91"/>
<label x="119.38" y="-5.08" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="DAT" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="SDA"/>
<wire x1="15.24" y1="10.16" x2="25.4" y2="10.16" width="0.1524" layer="91"/>
<label x="25.4" y="10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="SDO"/>
<wire x1="86.36" y1="73.66" x2="86.36" y2="71.12" width="0.1524" layer="91"/>
<label x="86.36" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$5" gate="G$1" pin="SDA"/>
<wire x1="121.92" y1="10.16" x2="114.3" y2="10.16" width="0.1524" layer="91"/>
<wire x1="114.3" y1="10.16" x2="114.3" y2="-2.54" width="0.1524" layer="91"/>
<label x="109.22" y="-2.54" size="1.778" layer="95"/>
</segment>
</net>
<net name="V_BAT" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="BAT"/>
<label x="17.78" y="68.58" size="1.778" layer="95"/>
<pinref part="BAT_VIN" gate="1" pin="P"/>
<wire x1="25.4" y1="63.5" x2="25.4" y2="66.04" width="0.1524" layer="91"/>
<wire x1="25.4" y1="66.04" x2="15.24" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ADXL_X" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="XOUT"/>
<wire x1="86.36" y1="43.18" x2="88.9" y2="43.18" width="0.1524" layer="91"/>
<label x="83.82" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A2"/>
<wire x1="-15.24" y1="55.88" x2="-17.78" y2="55.88" width="0.1524" layer="91"/>
<label x="-25.4" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="ADXL_Y" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="YOUT"/>
<wire x1="86.36" y1="38.1" x2="88.9" y2="38.1" width="0.1524" layer="91"/>
<label x="83.82" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A1"/>
<wire x1="-15.24" y1="60.96" x2="-17.78" y2="60.96" width="0.1524" layer="91"/>
<label x="-25.4" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="ADXL_Z" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="ZOUT"/>
<wire x1="86.36" y1="33.02" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<label x="83.82" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="A0"/>
<wire x1="-15.24" y1="66.04" x2="-17.78" y2="66.04" width="0.1524" layer="91"/>
<label x="-25.4" y="66.04" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="TX"/>
<wire x1="149.86" y1="55.88" x2="149.86" y2="35.56" width="0.1524" layer="91"/>
<wire x1="149.86" y1="35.56" x2="154.94" y2="35.56" width="0.1524" layer="91"/>
<label x="157.48" y="33.02" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="TX"/>
<wire x1="-15.24" y1="15.24" x2="-17.78" y2="15.24" width="0.1524" layer="91"/>
<label x="-20.32" y="15.24" size="1.778" layer="95"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="RX"/>
<wire x1="154.94" y1="55.88" x2="154.94" y2="38.1" width="0.1524" layer="91"/>
<wire x1="154.94" y1="38.1" x2="157.48" y2="38.1" width="0.1524" layer="91"/>
<label x="160.02" y="38.1" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="RX"/>
<wire x1="-15.24" y1="20.32" x2="-17.78" y2="20.32" width="0.1524" layer="91"/>
<label x="-20.32" y="20.32" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
