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
LIBS:battery
LIBS:MC33269ST
LIBS:LP2985-33DBVR
LIBS:degson
LIBS:PHT6NQ10T_135
LIBS:L298P
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
L CP PC1
U 1 1 55CD0072
P 5025 3875
F 0 "PC1" H 5075 3975 40  0000 L CNN
F 1 "47uF" H 5075 3775 40  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 5125 3725 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 5025 3875 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 5025 3875 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Input Cap" H 5025 3875 60  0001 C CNN "Description"
F 6 "Vishay" H 5025 3875 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 5025 3875 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 5025 3875 60  0001 C CNN "Package ID"
F 9 "ANY" H 5025 3875 60  0001 C CNN "Source"
F 10 "N" H 5025 3875 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 5025 3875 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 5025 3875 60  0001 C CNN "Notes"
	1    5025 3875
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55CD0087
P 6750 4000
F 0 "C2" H 6800 4100 40  0000 L CNN
F 1 "0.1 uF" H 6800 3900 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6788 3850 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 6750 4000 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 6750 4000 60  0001 C CNN "Characteristics"
F 5 "LDO Bypass Cap" H 6750 4000 60  0001 C CNN "Description"
F 6 "Kemet" H 6750 4000 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 6750 4000 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 6750 4000 60  0001 C CNN "Package ID"
F 9 "ANY" H 6750 4000 60  0001 C CNN "Source"
F 10 "N" H 6750 4000 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6750 4000 60  0001 C CNN "Subsystem"
F 12 "~" H 6750 4000 60  0001 C CNN "Notes"
	1    6750 4000
	1    0    0    -1  
$EndComp
$Comp
L CP PC2
U 1 1 55CE80D3
P 6350 4000
F 0 "PC2" H 6400 4100 40  0000 L CNN
F 1 "47uF" H 6400 3900 40  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 6450 3850 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 6350 4000 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 6350 4000 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Output Cap" H 6350 4000 60  0001 C CNN "Description"
F 6 "Vishay" H 6350 4000 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 6350 4000 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 6350 4000 60  0001 C CNN "Package ID"
F 9 "ANY" H 6350 4000 60  0001 C CNN "Source"
F 10 "N" H 6350 4000 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6350 4000 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 6350 4000 60  0001 C CNN "Notes"
	1    6350 4000
	1    0    0    -1  
$EndComp
$Comp
L GND-RESCUE-Arduino_Uno_R3_From_Scratch #PWR01
U 1 1 561FEA9F
P 5725 4400
F 0 "#PWR01" H 5725 4150 50  0001 C CNN
F 1 "GND" H 5725 4250 50  0001 C CNN
F 2 "" H 5725 4400 60  0000 C CNN
F 3 "" H 5725 4400 60  0000 C CNN
F 4 "ANY" H 5725 4400 60  0001 C CNN "Source"
F 5 "N" H 5725 4400 60  0001 C CNN "Critical"
F 6 "~" H 5725 4400 60  0001 C CNN "Notes"
	1    5725 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4250 4050 4250
Wire Wire Line
	4050 4100 4575 4100
Connection ~ 4425 4100
$Comp
L D D1
U 1 1 5A9FF517
P 4425 3750
F 0 "D1" H 4425 3850 50  0000 C CNN
F 1 "D" H 4425 3650 50  0000 C CNN
F 2 "Diodes_SMD:D_MicroMELF_Hadsoldering" H 4425 3750 50  0001 C CNN
F 3 "" H 4425 3750 50  0001 C CNN
	1    4425 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	4425 3900 4425 4100
Text HLabel 4575 4100 2    60   Input ~ 0
PWRIN
$Comp
L MC33269ST-5.OT3 IC1
U 1 1 5AA00876
P 5725 3525
F 0 "IC1" H 5925 3275 60  0000 C CNN
F 1 "MC33269ST-5.OT3" H 5725 3775 60  0000 C CNN
F 2 "MC33269ST-3.3T3G:SOT230P700X175-4N" H 5375 3425 60  0001 C CNN
F 3 "" H 5375 3425 60  0001 C CNN
	1    5725 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 3600 4425 3300
Wire Wire Line
	4425 3425 5175 3425
Connection ~ 4425 3425
Wire Wire Line
	5025 4400 5025 4025
Wire Wire Line
	5025 3725 5025 3425
Connection ~ 5025 3425
Wire Wire Line
	5725 4400 5725 3925
Wire Wire Line
	6175 3425 7150 3425
Wire Wire Line
	6350 3300 6350 3850
Wire Wire Line
	6175 3525 6750 3525
Connection ~ 6350 3425
Wire Wire Line
	6350 4150 6350 4400
Connection ~ 6350 3525
Wire Wire Line
	6750 4400 6750 4150
Wire Wire Line
	6750 3525 6750 3850
$Comp
L GND #PWR02
U 1 1 5AA01DB9
P 7700 4400
F 0 "#PWR02" H 7700 4150 50  0001 C CNN
F 1 "GND" H 7700 4250 50  0000 C CNN
F 2 "" H 7700 4400 50  0001 C CNN
F 3 "" H 7700 4400 50  0001 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5AA02A53
P 8850 3925
F 0 "C3" H 8900 4025 40  0000 L CNN
F 1 "1 uF" H 8900 3825 40  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8888 3775 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 8850 3925 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 8850 3925 60  0001 C CNN "Characteristics"
F 5 "LDO Bypass Cap" H 8850 3925 60  0001 C CNN "Description"
F 6 "Kemet" H 8850 3925 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 8850 3925 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 8850 3925 60  0001 C CNN "Package ID"
F 9 "ANY" H 8850 3925 60  0001 C CNN "Source"
F 10 "N" H 8850 3925 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 8850 3925 60  0001 C CNN "Subsystem"
F 12 "~" H 8850 3925 60  0001 C CNN "Notes"
	1    8850 3925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5AA02AAE
P 8850 4400
F 0 "#PWR03" H 8850 4150 50  0001 C CNN
F 1 "GND" H 8850 4250 50  0000 C CNN
F 2 "" H 8850 4400 50  0001 C CNN
F 3 "" H 8850 4400 50  0001 C CNN
	1    8850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3425 8850 3425
Wire Wire Line
	8850 3425 8850 3775
Wire Wire Line
	8850 4075 8850 4400
$Comp
L +5V #PWR04
U 1 1 5AA0368C
P 6350 3300
F 0 "#PWR04" H 6350 3150 50  0001 C CNN
F 1 "+5V" H 6350 3440 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Text HLabel 4425 3300 1    60   Input ~ 0
VIN
Wire Wire Line
	8675 3425 8675 3350
Connection ~ 8675 3425
Text HLabel 8675 3350 1    60   Input ~ 0
+3V3
$Comp
L DG3XX-02-3.5 X2
U 1 1 5AA421FF
P 3950 4100
F 0 "X2" H 4070 4065 45  0000 L BNN
F 1 "DG3XX-02-3.5" H 3950 4100 45  0001 L BNN
F 2 "degson:degson-DG350-3.5-02P" H 3980 4250 20  0001 C CNN
F 3 "" H 3950 4100 60  0001 C CNN
	1    3950 4100
	-1   0    0    1   
$EndComp
$Comp
L DG3XX-02-3.5 X2
U 2 1 5AA42290
P 3950 4250
F 0 "X2" H 4070 4215 45  0000 L BNN
F 1 "DG3XX-02-3.5" H 3950 4250 45  0001 L BNN
F 2 "degson:degson-DG350-3.5-02P" H 3980 4400 20  0001 C CNN
F 3 "" H 3950 4250 60  0001 C CNN
	2    3950 4250
	-1   0    0    1   
$EndComp
$Comp
L MC33269ST-5.OT3 IC2
U 1 1 5AB3045E
P 7700 3525
F 0 "IC2" H 7900 3275 60  0000 C CNN
F 1 "MC33269ST-5.OT3" H 7700 3775 60  0000 C CNN
F 2 "MC33269ST-3.3T3G:SOT230P700X175-4N" H 7350 3425 60  0001 C CNN
F 3 "" H 7350 3425 60  0001 C CNN
	1    7700 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3925 7700 4400
Wire Wire Line
	8150 3525 8250 3525
Wire Wire Line
	8250 3525 8250 3425
Connection ~ 8250 3425
Text HLabel 4150 4250 0    60   Input ~ 0
GND
Text HLabel 6750 4400 0    60   Input ~ 0
GND
Text HLabel 6350 4400 0    60   Input ~ 0
GND
Text HLabel 5025 4400 0    60   Input ~ 0
GND
$EndSCHEMATC
