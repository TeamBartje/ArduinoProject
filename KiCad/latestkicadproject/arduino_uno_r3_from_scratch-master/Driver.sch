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
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 6350 2500 0    60   ~ 0
OUT4
Text Label 6350 2600 0    60   ~ 0
OUT3
Text Label 6350 2800 0    60   ~ 0
PWMB
Text Label 6350 2900 0    60   ~ 0
DIRB
$Comp
L 74AHC1G04 U4
U 1 1 5A0B4CE4
P 7100 2700
F 0 "U4" H 7295 2815 50  0000 C CNN
F 1 "74AHC1G04" H 7400 2550 50  0000 C CNN
F 2 "74AHc1G04:74AHC1G04GW" H 7100 2700 50  0001 C CNN
F 3 "" H 7100 2700 50  0001 C CNN
	1    7100 2700
	-1   0    0    1   
$EndComp
$Comp
L C C8
U 1 1 5A0B4FB6
P 7500 3050
F 0 "C8" H 7525 3150 50  0000 L CNN
F 1 "0.1uF" H 7525 2950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7538 2900 50  0001 C CNN
F 3 "" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
Text Label 4150 2500 2    60   ~ 0
OUT1
Text Label 4150 2600 2    60   ~ 0
OUT2
Text Label 4150 2700 2    60   ~ 0
PWRIN
Text Label 4150 2800 2    60   ~ 0
DIRA
Text Label 4150 2900 2    60   ~ 0
PWMA
$Comp
L 74AHC1G04 U3
U 1 1 5A0B58F7
P 3100 3000
F 0 "U3" H 3295 3115 50  0000 C CNN
F 1 "74AHC1G04" H 3400 2850 50  0000 C CNN
F 2 "74AHc1G04:74AHC1G04GW" H 3100 3000 50  0001 C CNN
F 3 "" H 3100 3000 50  0001 C CNN
	1    3100 3000
	1    0    0    -1  
$EndComp
Text Label 3050 2600 0    60   ~ 0
+5V
Text Label 2650 3000 0    60   ~ 0
DIRA
$Comp
L C C1
U 1 1 5A0B5B71
P 2750 2600
F 0 "C1" H 2775 2700 50  0000 L CNN
F 1 "1uF" H 2775 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2788 2450 50  0001 C CNN
F 3 "" H 2750 2600 50  0001 C CNN
	1    2750 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 5A0B5C08
P 2500 2600
F 0 "#PWR019" H 2500 2350 50  0001 C CNN
F 1 "GND" H 2500 2450 50  0000 C CNN
F 2 "" H 2500 2600 50  0001 C CNN
F 3 "" H 2500 2600 50  0001 C CNN
	1    2500 2600
	0    1    1    0   
$EndComp
NoConn ~ 4450 2400
NoConn ~ 6050 2400
Text HLabel 3400 2350 1    60   Input ~ 0
PWMA
Text HLabel 3600 2350 1    60   Input ~ 0
DIRA
Text HLabel 2650 3000 0    60   Input ~ 0
DIRA
Text HLabel 6675 3000 3    60   Input ~ 0
DIRB
Text HLabel 6825 3000 3    60   Input ~ 0
PWMB
Text HLabel 7550 2700 2    60   Input ~ 0
DIRB
$Comp
L +5V #PWR020
U 1 1 5AA17AD4
P 3050 2550
F 0 "#PWR020" H 3050 2400 50  0001 C CNN
F 1 "+5V" H 3050 2690 50  0000 C CNN
F 2 "" H 3050 2550 50  0001 C CNN
F 3 "" H 3050 2550 50  0001 C CNN
	1    3050 2550
	1    0    0    -1  
$EndComp
$Comp
L CP C7
U 1 1 5AA17B72
P 3800 3050
F 0 "C7" H 3825 3150 50  0000 L CNN
F 1 "100uF,25V" H 3825 2950 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 3838 2900 50  0001 C CNN
F 3 "" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 5AA17E98
P 6350 3000
F 0 "#PWR021" H 6350 2850 50  0001 C CNN
F 1 "+5V" H 6350 3140 50  0000 C CNN
F 2 "" H 6350 3000 50  0001 C CNN
F 3 "" H 6350 3000 50  0001 C CNN
	1    6350 3000
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR022
U 1 1 5AA17EEA
P 7150 3100
F 0 "#PWR022" H 7150 2950 50  0001 C CNN
F 1 "+5V" H 7150 3240 50  0000 C CNN
F 2 "" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	-1   0    0    1   
$EndComp
Text HLabel 3775 2350 1    60   Input ~ 0
OUT2
Text HLabel 3950 2350 1    60   Input ~ 0
OUT1
Text HLabel 6650 2350 1    60   Input ~ 0
OUT4
Text HLabel 6825 2350 1    60   Input ~ 0
OUT3
$Comp
L L298P IC3
U 1 1 5AB3217D
P 4450 2200
F 0 "IC3" H 5900 2500 50  0000 L CNN
F 1 "L298P" H 5900 2400 50  0000 L CNN
F 2 "L298Poud:SOIC127P1420X360-21N" H 5900 2300 50  0001 L CNN
F 3 "http://docs-europe.electrocomponents.com/webdocs/135f/0900766b8135fb62.pdf" H 5900 2200 50  0001 L CNN
F 4 "L298P, Full Bridge Motor Driver, 3A Dual Full Bridge Motor Driver,, 25W 4.8  46 V, 20-Pin Power SO" H 5900 2100 50  0001 L CNN "Description"
F 5 "3.6" H 5900 2000 50  0001 L CNN "Height"
F 6 "STMicroelectronics" H 5900 1900 50  0001 L CNN "Manufacturer_Name"
F 7 "L298P" H 5900 1800 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "7147715P" H 5900 1700 50  0001 L CNN "RS Part Number"
F 9 "http://uk.rs-online.com/web/p/products/7147715P" H 5900 1600 50  0001 L CNN "RS Price/Stock"
F 10 "70013871" H 5900 1500 50  0001 L CNN "Allied_Number"
F 11 "http://www.alliedelec.com/stmicroelectronics-l298p/70013871/" H 5900 1400 50  0001 L CNN "Allied Price/Stock"
	1    4450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2500 6650 2500
Wire Wire Line
	6050 2600 6825 2600
Wire Wire Line
	6050 2800 6825 2800
Wire Wire Line
	6050 2900 6675 2900
Wire Wire Line
	6050 2700 6650 2700
Wire Wire Line
	7150 2900 7150 3100
Wire Wire Line
	7150 3050 7350 3050
Connection ~ 7150 3050
Wire Wire Line
	3950 2500 4450 2500
Wire Wire Line
	3775 2600 4450 2600
Wire Wire Line
	3800 2700 4450 2700
Wire Wire Line
	3400 2900 4450 2900
Wire Wire Line
	3600 2800 4450 2800
Wire Wire Line
	3800 2700 3800 2900
Wire Wire Line
	3800 3200 3800 3300
Wire Wire Line
	3550 3000 4450 3000
Wire Wire Line
	3050 2550 3050 2800
Wire Wire Line
	3050 2600 2900 2600
Connection ~ 3050 2600
Wire Wire Line
	2500 2600 2600 2600
Wire Wire Line
	3950 2350 3950 2500
Wire Wire Line
	3775 2600 3775 2350
Wire Wire Line
	3600 2800 3600 2350
Wire Wire Line
	3400 2350 3400 2900
Wire Wire Line
	6650 2500 6650 2350
Wire Wire Line
	6825 2600 6825 2350
Wire Wire Line
	6675 2900 6675 3000
Wire Wire Line
	6825 2800 6825 3000
Wire Wire Line
	3050 3300 3050 3200
Wire Wire Line
	6050 3100 6250 3100
Wire Wire Line
	6250 2200 6250 3300
Wire Wire Line
	6050 2200 6250 2200
Connection ~ 6250 3100
Wire Wire Line
	6050 2300 6250 2300
Connection ~ 6250 2300
Wire Wire Line
	6050 3000 6350 3000
Wire Wire Line
	4250 3300 4250 2200
Wire Wire Line
	4250 2200 4450 2200
Wire Wire Line
	4450 2300 4250 2300
Connection ~ 4250 2300
Wire Wire Line
	4450 3100 4250 3100
Connection ~ 4250 3100
Wire Wire Line
	7150 2500 7150 2450
Text HLabel 7150 2450 0    60   Input ~ 0
GND
Text HLabel 7650 3050 2    60   Input ~ 0
GND
Text HLabel 6250 3300 2    60   Input ~ 0
GND
Text HLabel 5250 3600 2    60   Input ~ 0
GND
Text HLabel 4250 3300 2    60   Input ~ 0
GND
Text HLabel 3800 3300 2    60   Input ~ 0
GND
Text HLabel 3050 3300 2    60   Input ~ 0
GND
$EndSCHEMATC
