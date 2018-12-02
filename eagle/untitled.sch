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
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<pad name="EN" x="3.81" y="10.16" drill="0.8"/>
<pad name="USB" x="6.35" y="10.16" drill="0.8"/>
<pad name="13" x="8.89" y="10.16" drill="0.8"/>
<pad name="12" x="11.43" y="10.16" drill="0.8"/>
<pad name="11" x="13.97" y="10.16" drill="0.8"/>
<pad name="10" x="16.51" y="10.16" drill="0.8"/>
<pad name="9" x="19.05" y="10.16" drill="0.8"/>
<pad name="6" x="21.59" y="10.16" drill="0.8"/>
<pad name="5" x="24.13" y="10.16" drill="0.8"/>
<pad name="SCL" x="26.67" y="10.16" drill="0.8"/>
<pad name="SDA" x="29.21" y="10.16" drill="0.8"/>
<pad name="BAT" x="1.27" y="10.16" drill="0.8"/>
<pad name="GND_0" x="29.21" y="-10.16" drill="0.8"/>
<pad name="TX" x="26.67" y="-10.16" drill="0.8"/>
<pad name="RX" x="24.13" y="-10.16" drill="0.8"/>
<pad name="MO" x="21.59" y="-10.16" drill="0.8"/>
<pad name="MI" x="19.05" y="-10.16" drill="0.8"/>
<pad name="SCK" x="16.51" y="-10.16" drill="0.8"/>
<pad name="A5" x="13.97" y="-10.16" drill="0.8"/>
<pad name="A4" x="11.43" y="-10.16" drill="0.8"/>
<pad name="A3" x="8.89" y="-10.16" drill="0.8"/>
<pad name="A2" x="6.35" y="-10.16" drill="0.8"/>
<pad name="A1" x="3.81" y="-10.16" drill="0.8"/>
<pad name="A0" x="1.27" y="-10.16" drill="0.8"/>
<pad name="GND" x="-1.27" y="-10.16" drill="0.8"/>
<pad name="ARF" x="-3.81" y="-10.16" drill="0.8"/>
<pad name="3V" x="-6.35" y="-10.16" drill="0.8"/>
<pad name="RST" x="-8.89" y="-10.16" drill="0.8"/>
<wire x1="-12.7" y1="11.43" x2="33.02" y2="11.43" width="0.127" layer="21"/>
<wire x1="33.02" y1="11.43" x2="35.56" y2="8.89" width="0.127" layer="21" curve="-90"/>
<wire x1="35.56" y1="8.89" x2="35.56" y2="-8.89" width="0.127" layer="21"/>
<wire x1="35.56" y1="-8.89" x2="33.02" y2="-11.43" width="0.127" layer="21" curve="-90"/>
<wire x1="33.02" y1="-11.43" x2="-12.7" y2="-11.43" width="0.127" layer="21"/>
<wire x1="-12.7" y1="-11.43" x2="-15.24" y2="-8.89" width="0.127" layer="21" curve="-90"/>
<wire x1="-15.24" y1="-8.89" x2="-15.24" y2="8.89" width="0.127" layer="21"/>
<wire x1="-15.24" y1="8.89" x2="-12.7" y2="11.43" width="0.127" layer="21" curve="-90"/>
<dimension x1="-12.7" y1="11.43" x2="-12.7" y2="-11.43" x3="-25.4" y3="0" textsize="1.27" layer="21" unit="inch"/>
<dimension x1="-15.24" y1="8.89" x2="35.56" y2="8.89" x3="10.16" y3="16.51" textsize="1.27" layer="21" unit="inch"/>
<hole x="33.02" y="8.89" drill="2.54"/>
<hole x="33.02" y="-8.89" drill="2.54"/>
<pad name="A6" x="-12.7" y="8.89" drill="2.54"/>
<pad name="A7" x="-12.7" y="-8.89" drill="2.54"/>
<text x="-7.62" y="-1.27" size="5.08" layer="21">Feather M0</text>
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
<pad name="VIN" x="1.27" y="2.54" drill="0.8"/>
<pad name="3VO" x="3.81" y="2.54" drill="0.8"/>
<pad name="GND" x="6.35" y="2.54" drill="0.8"/>
<pad name="SCK" x="8.89" y="2.54" drill="0.8"/>
<pad name="SDO" x="11.43" y="2.54" drill="0.8"/>
<pad name="SDI" x="13.97" y="2.54" drill="0.8"/>
<pad name="CS" x="16.51" y="2.54" drill="0.8"/>
<pad name="A8" x="2.54" y="16.51" drill="2.032"/>
<pad name="A9" x="15.24" y="16.51" drill="2.032"/>
<dimension x1="2.54" y1="19.05" x2="2.54" y2="0" x3="-2.54" y3="9.525" textsize="1.27" layer="21" unit="inch"/>
<dimension x1="0" y1="16.51" x2="17.78" y2="16.51" x3="8.89" y3="21.59" textsize="1.27" layer="21" unit="inch"/>
<text x="8.89" y="17.78" size="1.27" layer="21" align="center">BMP280</text>
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
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="5.08" y="35.56" smashed="yes"/>
<instance part="U$2" gate="G$1" x="66.04" y="73.66" smashed="yes"/>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="3V"/>
<wire x1="-7.62" y1="78.74" x2="-15.24" y2="78.74" width="0.1524" layer="91"/>
<label x="-17.78" y="78.74" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VIN"/>
<wire x1="68.58" y1="68.58" x2="68.58" y2="63.5" width="0.1524" layer="91"/>
<label x="68.58" y="60.96" size="1.778" layer="95" rot="R270"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="78.74" y1="68.58" x2="78.74" y2="63.5" width="0.1524" layer="91"/>
<label x="78.74" y="60.96" size="1.778" layer="95" rot="R270"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND"/>
<wire x1="-7.62" y1="68.58" x2="-15.24" y2="68.58" width="0.1524" layer="91"/>
<label x="-17.78" y="68.58" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="I2CLK" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SCK"/>
<wire x1="83.82" y1="68.58" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<label x="83.82" y="60.96" size="1.778" layer="95" rot="R270"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SCL"/>
<wire x1="22.86" y1="12.7" x2="27.94" y2="12.7" width="0.1524" layer="91"/>
<label x="30.48" y="12.7" size="1.778" layer="95"/>
</segment>
</net>
<net name="I2DAT" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="SDO"/>
<wire x1="88.9" y1="68.58" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<label x="88.9" y="60.96" size="1.778" layer="95" rot="R270"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="SDA"/>
<wire x1="22.86" y1="7.62" x2="27.94" y2="7.62" width="0.1524" layer="91"/>
<label x="30.48" y="7.62" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
