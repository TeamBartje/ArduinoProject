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
$Comp
L GND #PWR015
U 1 1 5A0B4BA1
P 4250 3300
F 0 "#PWR015" H 4250 3050 50  0001 C CNN
F 1 "GND" H 4250 3150 50  0000 C CNN
F 2 "" H 4250 3300 50  0001 C CNN
F 3 "" H 4250 3300 50  0001 C CNN
	1    4250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2200 4250 2200
Wire Wire Line
	4400 2300 4250 2300
Connection ~ 4250 2300
Wire Wire Line
	4400 3100 4250 3100
Connection ~ 4250 3100
$Comp
L GND #PWR016
U 1 1 5A0B4C37
P 6250 3300
F 0 "#PWR016" H 6250 3050 50  0001 C CNN
F 1 "GND" H 6250 3150 50  0000 C CNN
F 2 "" H 6250 3300 50  0001 C CNN
F 3 "" H 6250 3300 50  0001 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3300 6250 2200
Wire Wire Line
	6250 2200 6100 2200
Wire Wire Line
	6100 2300 6250 2300
Connection ~ 6250 2300
Wire Wire Line
	6100 3100 6250 3100
Connection ~ 6250 3100
Wire Wire Line
	6100 2500 6650 2500
Wire Wire Line
	6100 2600 6825 2600
Text Label 6350 2500 0    60   ~ 0
OUT4
Text Label 6350 2600 0    60   ~ 0
OUT3
Wire Wire Line
	6100 2800 6825 2800
Wire Wire Line
	6100 2900 6675 2900
Text Label 6350 2800 0    60   ~ 0
PWMB
Text Label 6350 2900 0    60   ~ 0
DIRB
Wire Wire Line
	6100 3000 6300 3000
Wire Wire Line
	6300 3000 6300 2050
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
Wire Wire Line
	6100 2700 6650 2700
$Comp
L GND #PWR017
U 1 1 5A0B4D89
P 7150 2500
F 0 "#PWR017" H 7150 2250 50  0001 C CNN
F 1 "GND" H 7150 2350 50  0000 C CNN
F 2 "" H 7150 2500 50  0001 C CNN
F 3 "" H 7150 2500 50  0001 C CNN
	1    7150 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2900 7150 3100
Wire Wire Line
	7150 3050 7350 3050
Connection ~ 7150 3050
$Comp
L C C8
U 1 1 5A0B4FB6
P 7500 3050
F 0 "C8" H 7525 3150 50  0000 L CNN
F 1 "0.1uF" H 7525 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7538 2900 50  0001 C CNN
F 3 "" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5A0B5004
P 7650 3050
F 0 "#PWR018" H 7650 2800 50  0001 C CNN
F 1 "GND" H 7650 2900 50  0000 C CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "" H 7650 3050 50  0001 C CNN
	1    7650 3050
	0    -1   -1   0   
$EndComp
$Comp
L L298 U9
U 1 1 5A0B4B28
P 5250 2700
F 0 "U9" H 5250 2700 60  0000 C CNN
F 1 "L298" H 5250 2800 60  0000 C CNN
F 2 "L298P:SOIC127P1420X360-21N" H 5450 3300 60  0000 C CNN
F 3 "" H 5250 2700 60  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2500 4400 2500
Wire Wire Line
	3775 2600 4400 2600
Wire Wire Line
	3800 2700 4400 2700
Wire Wire Line
	3400 2900 4400 2900
Wire Wire Line
	3600 2800 4400 2800
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
Wire Wire Line
	3800 2700 3800 2900
$Comp
L GND #PWR019
U 1 1 5A0B56EE
P 3800 3300
F 0 "#PWR019" H 3800 3050 50  0001 C CNN
F 1 "GND" H 3800 3150 50  0000 C CNN
F 2 "" H 3800 3300 50  0001 C CNN
F 3 "" H 3800 3300 50  0001 C CNN
	1    3800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3200 3800 3300
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
Wire Wire Line
	4400 3000 3550 3000
$Comp
L GND #PWR020
U 1 1 5A0B5AAE
P 3050 3300
F 0 "#PWR020" H 3050 3050 50  0001 C CNN
F 1 "GND" H 3050 3150 50  0000 C CNN
F 2 "" H 3050 3300 50  0001 C CNN
F 3 "" H 3050 3300 50  0001 C CNN
	1    3050 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2550 3050 2800
Wire Wire Line
	3050 2600 2900 2600
Connection ~ 3050 2600
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
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2788 2450 50  0001 C CNN
F 3 "" H 2750 2600 50  0001 C CNN
	1    2750 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5A0B5C08
P 2500 2600
F 0 "#PWR021" H 2500 2350 50  0001 C CNN
F 1 "GND" H 2500 2450 50  0000 C CNN
F 2 "" H 2500 2600 50  0001 C CNN
F 3 "" H 2500 2600 50  0001 C CNN
	1    2500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2600 2600 2600
NoConn ~ 4400 2400
NoConn ~ 6100 2400
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
	4250 2200 4250 3300
$Comp
L GND #PWR022
U 1 1 5A979197
P 5250 3450
F 0 "#PWR022" H 5250 3200 50  0001 C CNN
F 1 "GND" H 5250 3300 50  0000 C CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0001 C CNN
	1    5250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3300 3050 3200
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
L +5V #PWR023
U 1 1 5AA17AD4
P 3050 2550
F 0 "#PWR023" H 3050 2400 50  0001 C CNN
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
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3838 2900 50  0001 C CNN
F 3 "" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 5AA17E98
P 6300 2050
F 0 "#PWR024" H 6300 1900 50  0001 C CNN
F 1 "+5V" H 6300 2190 50  0000 C CNN
F 2 "" H 6300 2050 50  0001 C CNN
F 3 "" H 6300 2050 50  0001 C CNN
	1    6300 2050
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 5AA17EEA
P 7150 3100
F 0 "#PWR025" H 7150 2950 50  0001 C CNN
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
$EndSCHEMATC
