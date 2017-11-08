EESchema Schematic File Version 2
LIBS:Arduino_Uno_R3_From_Scratch-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Arduino_Uno_R3_From_Scratch
LIBS:MFN_Atmel
LIBS:MFN_STMicro
LIBS:l298
LIBS:l298A
LIBS:Arduino_Uno_R3_From_Scratch-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "Arduino UNO R3 Clone"
Date "8 oct 2015"
Rev "0"
Comp "Rheingold Heavy"
Comment1 "Based on the Arduino UNO R3 From arduino.cc"
Comment2 "All mention of the Arduino name and brand should be associated with them, not me."
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L D D1
U 1 1 55CD0063
P 4550 2825
F 0 "D1" H 4550 2925 40  0000 C CNN
F 1 "DIODE" H 4550 2725 40  0000 C CNN
F 2 "~" H 4550 2825 60  0000 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MRA4003T3-D.PDF" H 4550 2825 60  0001 C CNN
F 4 "1A, 1000V, SILICON, SIGNAL DIODE, ROHS COMPLIANT, COMPACT, PLASTIC, CASE 403D-02, SMA, 2 PIN" H 4550 2825 60  0001 C CNN "Characteristics"
F 5 "Reverse Voltage Protection Diode" H 4550 2825 60  0001 C CNN "Description"
F 6 "ON Semi" H 4550 2825 60  0001 C CNN "MFN"
F 7 "MRA4007T3G" H 4550 2825 60  0001 C CNN "MFP"
F 8 "R-PDSO-J2" H 4550 2825 60  0001 C CNN "Package ID"
F 9 "ANY" H 4550 2825 60  0001 C CNN "Source"
F 10 "N" H 4550 2825 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 4550 2825 60  0001 C CNN "Subsystem"
F 12 "~" H 4550 2825 60  0001 C CNN "Notes"
	1    4550 2825
	-1   0    0    1   
$EndComp
$Comp
L CP C1
U 1 1 55CD0072
P 5125 3225
F 0 "C1" H 5175 3325 40  0000 L CNN
F 1 "47uF" H 5175 3125 40  0000 L CNN
F 2 "~" H 5225 3075 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 5125 3225 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 5125 3225 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Input Cap" H 5125 3225 60  0001 C CNN "Description"
F 6 "Vishay" H 5125 3225 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 5125 3225 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 5125 3225 60  0001 C CNN "Package ID"
F 9 "ANY" H 5125 3225 60  0001 C CNN "Source"
F 10 "N" H 5125 3225 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 5125 3225 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 5125 3225 60  0001 C CNN "Notes"
	1    5125 3225
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 55CD0087
P 6875 3225
F 0 "C3" H 6925 3325 40  0000 L CNN
F 1 "0.1 uF" H 6925 3125 40  0000 L CNN
F 2 "~" H 6913 3075 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 6875 3225 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 6875 3225 60  0001 C CNN "Characteristics"
F 5 "LDO Bypass Cap" H 6875 3225 60  0001 C CNN "Description"
F 6 "Kemet" H 6875 3225 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 6875 3225 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 6875 3225 60  0001 C CNN "Package ID"
F 9 "ANY" H 6875 3225 60  0001 C CNN "Source"
F 10 "N" H 6875 3225 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6875 3225 60  0001 C CNN "Subsystem"
F 12 "~" H 6875 3225 60  0001 C CNN "Notes"
	1    6875 3225
	1    0    0    -1  
$EndComp
$Comp
L BARREL_JACK-RESCUE-Arduino_Uno_R3_From_Scratch CON1
U 1 1 55CD027B
P 3575 2825
F 0 "CON1" H 3575 3075 60  0000 C CNN
F 1 "BARREL_JACK" H 3575 2625 60  0000 C CNN
F 2 "~" H 3575 2825 60  0000 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/6941xx106102.pdf" H 3575 2825 60  0001 C CNN
F 4 "CONN PWR JACK DC RA SMD	" H 3575 2825 60  0001 C CNN "Characteristics"
F 5 "9V Barrel Jack" H 3575 2825 60  0001 C CNN "Description"
F 6 "Wurth Electronics" H 3575 2825 60  0001 C CNN "MFN"
F 7 "694106106102" H 3575 2825 60  0001 C CNN "MFP"
F 8 "Custom SMD" H 3575 2825 60  0001 C CNN "Package ID"
F 9 "ANY" H 3575 2825 60  0001 C CNN "Source"
F 10 "N" H 3575 2825 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 3575 2825 60  0001 C CNN "Subsystem"
F 12 "Any sub must match footprint" H 3575 2825 60  0001 C CNN "Notes"
	1    3575 2825
	1    0    0    1   
$EndComp
Text Notes 3575 1900 0    60   ~ 0
Barrel Plug must be 2.1mm ID x 5.5mm OD
$Comp
L CP C2
U 1 1 55CE80D3
P 6475 3225
F 0 "C2" H 6525 3325 40  0000 L CNN
F 1 "47uF" H 6525 3125 40  0000 L CNN
F 2 "~" H 6575 3075 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 6475 3225 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 6475 3225 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Output Cap" H 6475 3225 60  0001 C CNN "Description"
F 6 "Vishay" H 6475 3225 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 6475 3225 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 6475 3225 60  0001 C CNN "Package ID"
F 9 "ANY" H 6475 3225 60  0001 C CNN "Source"
F 10 "N" H 6475 3225 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6475 3225 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 6475 3225 60  0001 C CNN "Notes"
	1    6475 3225
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 55D1FC6C
P 7650 2675
F 0 "R1" V 7730 2675 40  0000 C CNN
F 1 "510" V 7657 2676 40  0000 C CNN
F 2 "~" V 7580 2675 30  0000 C CNN
F 3 "http://www.yageo.com/pdf/Pu-RC0805_51_PbFree_L_2.pdf" H 7650 2675 30  0001 C CNN
F 4 "RESISTOR, METAL GLAZE/THICK FILM, 0.125W, 1%, 100ppm, 510ohm, SURFACE MOUNT, 0805" H 7650 2675 60  0001 C CNN "Characteristics"
F 5 "Power On LED Resistor" H 7650 2675 60  0001 C CNN "Description"
F 6 "Yageo" H 7650 2675 60  0001 C CNN "MFN"
F 7 "RC0805FR-07510RL" H 7650 2675 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 7650 2675 60  0001 C CNN "Package ID"
F 9 "ANY" H 7650 2675 60  0001 C CNN "Source"
F 10 "N" H 7650 2675 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 7650 2675 60  0001 C CNN "Subsystem"
F 12 "~" H 7650 2675 60  0001 C CNN "Notes"
	1    7650 2675
	-1   0    0    1   
$EndComp
$Comp
L LED-RESCUE-Arduino_Uno_R3_From_Scratch D2
U 1 1 55D1FC7B
P 7650 3175
F 0 "D2" H 7650 3275 50  0000 C CNN
F 1 "LED" H 7650 3075 50  0000 C CNN
F 2 "~" H 7650 3175 60  0000 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00078860_0.pdf" H 7650 3175 60  0001 C CNN
F 4 "LED CHIPLED 570NM GREEN" H 7650 3175 60  0001 C CNN "Characteristics"
F 5 "Power On Green LED" H 7650 3175 60  0001 C CNN "Description"
F 6 "OSRAM Opto" H 7650 3175 60  0001 C CNN "MFN"
F 7 "LG R971-KN-1" H 7650 3175 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 7650 3175 60  0001 C CNN "Package ID"
F 9 "ANY" H 7650 3175 60  0001 C CNN "Source"
F 10 "N" H 7650 3175 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 7650 3175 60  0001 C CNN "Subsystem"
F 12 "~" H 7650 3175 60  0001 C CNN "Notes"
	1    7650 3175
	0    -1   -1   0   
$EndComp
$Comp
L Vin #PWR07
U 1 1 55E958C6
P 4925 2375
AR Path="/55E958C6" Ref="#PWR07"  Part="1" 
AR Path="/55CCFEA2/55E958C6" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4925 2465 20  0001 C CNN
F 1 "VIN" H 4925 2495 30  0000 C CNN
F 2 "~" H 4925 2375 60  0000 C CNN
F 3 "~" H 4925 2375 60  0000 C CNN
	1    4925 2375
	1    0    0    -1  
$EndComp
$Comp
L 5V_LDO #PWR02
U 1 1 55E958D5
P 6325 2375
F 0 "#PWR02" H 6325 2465 20  0001 C CNN
F 1 "5V_LDO" H 6325 2495 30  0000 C CNN
F 2 "~" H 6325 2375 60  0000 C CNN
F 3 "~" H 6325 2375 60  0000 C CNN
	1    6325 2375
	1    0    0    -1  
$EndComp
$Comp
L 5V_LDO #PWR03
U 1 1 55E958E4
P 7650 2375
F 0 "#PWR03" H 7650 2465 20  0001 C CNN
F 1 "5V_LDO" H 7650 2495 30  0000 C CNN
F 2 "~" H 7650 2375 60  0000 C CNN
F 3 "~" H 7650 2375 60  0000 C CNN
	1    7650 2375
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 561FCF65
P 5125 3575
F 0 "#PWR04" H 5125 3325 50  0001 C CNN
F 1 "GND" H 5125 3425 50  0001 C CNN
F 2 "" H 5125 3575 60  0000 C CNN
F 3 "" H 5125 3575 60  0000 C CNN
F 4 "ANY" H 5125 3575 60  0001 C CNN "Source"
F 5 "N" H 5125 3575 60  0001 C CNN "Critical"
F 6 "~" H 5125 3575 60  0001 C CNN "Notes"
	1    5125 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 2725 4075 2725
Wire Wire Line
	4075 2725 4075 2825
Wire Wire Line
	3875 2825 4400 2825
Connection ~ 4075 2825
Wire Wire Line
	4700 2825 5375 2825
Wire Wire Line
	5125 2825 5125 3075
Wire Wire Line
	3875 2925 4075 2925
Wire Wire Line
	4075 2925 4075 3575
Wire Wire Line
	5125 3375 5125 3575
Wire Notes Line
	3575 1925 4525 1925
Wire Notes Line
	3575 1925 3575 2475
Connection ~ 5125 2825
Wire Wire Line
	6175 2825 6875 2825
Wire Wire Line
	6875 2825 6875 3075
Wire Wire Line
	6475 3375 6475 3575
Wire Wire Line
	6875 3375 6875 3575
Wire Wire Line
	5775 3575 5775 3125
Wire Wire Line
	6475 2825 6475 3075
Connection ~ 6475 2825
Wire Wire Line
	6325 2375 6325 2825
Connection ~ 6325 2825
Wire Wire Line
	4925 2375 4925 2825
Connection ~ 4925 2825
Wire Wire Line
	7650 2375 7650 2525
Wire Wire Line
	7650 3575 7650 3375
$Comp
L LD1117S50TR-RESCUE-Arduino_Uno_R3_From_Scratch U1
U 1 1 55CD2289
P 5775 2875
F 0 "U1" H 5975 2625 60  0000 C CNN
F 1 "LD1117S50TR" H 5775 3125 60  0000 C CNN
F 2 "" H 5775 2875 60  0000 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 5775 2875 60  0001 C CNN
F 4 "5 V FIXED POSITIVE LDO REGULATOR, 1.2 V DROPOUT, PDSO3, ROHS COMPLIANT, SOT-223, 4 PIN" H 5775 2875 60  0001 C CNN "Characteristics"
F 5 "5V Fixed LDO" H 5775 2875 60  0001 C CNN "Description"
F 6 "STMicroelectronics" H 5775 2875 60  0001 C CNN "MFN"
F 7 "LD1117S50TR" H 5775 2875 60  0001 C CNN "MFP"
F 8 "SOT-223" H 5775 2875 60  0001 C CNN "Package ID"
F 9 "Any" H 5775 2875 60  0001 C CNN "Source"
F 10 "N" H 5775 2875 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 5775 2875 60  0001 C CNN "Subsystem"
F 12 "~" H 5775 2875 60  0001 C CNN "Notes"
	1    5775 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2825 7650 2975
$Comp
L GND #PWR05
U 1 1 561FEA9F
P 5775 3575
F 0 "#PWR05" H 5775 3325 50  0001 C CNN
F 1 "GND" H 5775 3425 50  0001 C CNN
F 2 "" H 5775 3575 60  0000 C CNN
F 3 "" H 5775 3575 60  0000 C CNN
F 4 "ANY" H 5775 3575 60  0001 C CNN "Source"
F 5 "N" H 5775 3575 60  0001 C CNN "Critical"
F 6 "~" H 5775 3575 60  0001 C CNN "Notes"
	1    5775 3575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 561FEAC8
P 6475 3575
F 0 "#PWR06" H 6475 3325 50  0001 C CNN
F 1 "GND" H 6475 3425 50  0001 C CNN
F 2 "" H 6475 3575 60  0000 C CNN
F 3 "" H 6475 3575 60  0000 C CNN
F 4 "ANY" H 6475 3575 60  0001 C CNN "Source"
F 5 "N" H 6475 3575 60  0001 C CNN "Critical"
F 6 "~" H 6475 3575 60  0001 C CNN "Notes"
	1    6475 3575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 561FEB19
P 6875 3575
F 0 "#PWR07" H 6875 3325 50  0001 C CNN
F 1 "GND" H 6875 3425 50  0001 C CNN
F 2 "" H 6875 3575 60  0000 C CNN
F 3 "" H 6875 3575 60  0000 C CNN
F 4 "ANY" H 6875 3575 60  0001 C CNN "Source"
F 5 "N" H 6875 3575 60  0001 C CNN "Critical"
F 6 "~" H 6875 3575 60  0001 C CNN "Notes"
	1    6875 3575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 561FEB42
P 7650 3575
F 0 "#PWR08" H 7650 3325 50  0001 C CNN
F 1 "GND" H 7650 3425 50  0001 C CNN
F 2 "" H 7650 3575 60  0000 C CNN
F 3 "" H 7650 3575 60  0000 C CNN
F 4 "ANY" H 7650 3575 60  0001 C CNN "Source"
F 5 "N" H 7650 3575 60  0001 C CNN "Critical"
F 6 "~" H 7650 3575 60  0001 C CNN "Notes"
	1    7650 3575
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 56209A71
P 4075 3575
F 0 "#PWR09" H 4075 3325 50  0001 C CNN
F 1 "GND" H 4075 3425 50  0001 C CNN
F 2 "" H 4075 3575 60  0000 C CNN
F 3 "" H 4075 3575 60  0000 C CNN
F 4 "ANY" H 4075 3575 60  0001 C CNN "Source"
F 5 "N" H 4075 3575 60  0001 C CNN "Critical"
F 6 "~" H 4075 3575 60  0001 C CNN "Notes"
	1    4075 3575
	1    0    0    -1  
$EndComp
$EndSCHEMATC
