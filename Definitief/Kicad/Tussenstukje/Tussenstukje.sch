EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:Tussenstukje-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Conn_01x05 VCCHeader2
U 1 1 5AAA7ABE
P 2775 3050
F 0 "VCCHeader2" H 2775 3350 50  0000 C CNN
F 1 "Conn_01x05" H 2775 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2775 3050 50  0001 C CNN
F 3 "" H 2775 3050 50  0001 C CNN
	1    2775 3050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 GNDHeader2
U 1 1 5AAA7B40
P 3325 3050
F 0 "GNDHeader2" H 3325 3350 50  0000 C CNN
F 1 "GNDHeader2" H 3325 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3325 3050 50  0001 C CNN
F 3 "" H 3325 3050 50  0001 C CNN
	1    3325 3050
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x05 VCCHeader1
U 1 1 5AAA7C28
P 2775 3800
F 0 "VCCHeader1" H 2775 4100 50  0000 C CNN
F 1 "Conn_01x05" H 2775 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 2775 3800 50  0001 C CNN
F 3 "" H 2775 3800 50  0001 C CNN
	1    2775 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 GNDHeader1
U 1 1 5AAA7C2E
P 3325 3800
F 0 "GNDHeader1" H 3325 4100 50  0000 C CNN
F 1 "GNDHeader1" H 3325 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3325 3800 50  0001 C CNN
F 3 "" H 3325 3800 50  0001 C CNN
	1    3325 3800
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x06 BluetoothInplugHeader1
U 1 1 5AAA7C3E
P 3475 4675
F 0 "BluetoothInplugHeader1" H 3475 4975 50  0000 C CNN
F 1 "Conn_01x06" H 3475 4275 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 3475 4675 50  0001 C CNN
F 3 "" H 3475 4675 50  0001 C CNN
	1    3475 4675
	0    -1   -1   0   
$EndComp
Text GLabel 3525 3600 2    60   Input ~ 0
GND
Text GLabel 3525 2850 2    60   Input ~ 0
GND
Text GLabel 3525 2950 2    60   Input ~ 0
GND
Text GLabel 3525 3050 2    60   Input ~ 0
GND
Text GLabel 3525 3150 2    60   Input ~ 0
GND
Text GLabel 3525 3250 2    60   Input ~ 0
GND
Text GLabel 2575 3600 0    60   Input ~ 0
Vcc
Text GLabel 2575 2850 0    60   Input ~ 0
Vcc
Text GLabel 2575 3700 0    60   Input ~ 0
Vcc
Text GLabel 2575 3800 0    60   Input ~ 0
Vcc
Text GLabel 2575 3900 0    60   Input ~ 0
Vcc
Text GLabel 2575 4000 0    60   Input ~ 0
Vcc
Text GLabel 3275 4875 3    60   Input ~ 0
Vcc
Text GLabel 3375 4875 3    60   Input ~ 0
GND
Text GLabel 3475 4875 3    60   Input ~ 0
TX
Text GLabel 3575 4875 3    60   Input ~ 0
RX
Text GLabel 4550 1600 1    60   Input ~ 0
Vcc
Text GLabel 4650 1600 1    60   Input ~ 0
GND
Text GLabel 4850 1600 1    60   Input ~ 0
RX
Text GLabel 4750 1600 1    60   Input ~ 0
TX
NoConn ~ 3675 4875
NoConn ~ 3775 4875
$Comp
L Conn_01x06 SensorOutputHeader1
U 1 1 5AAA9017
P 6525 1425
F 0 "SensorOutputHeader1" H 6525 1725 50  0000 C CNN
F 1 "Conn_01x06" H 6525 1025 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 6525 1425 50  0001 C CNN
F 3 "" H 6525 1425 50  0001 C CNN
	1    6525 1425
	0    -1   -1   0   
$EndComp
Text GLabel 6325 1625 3    60   Input ~ 0
OUT0
Text GLabel 6425 1625 3    60   Input ~ 0
OUT1
Text GLabel 6525 1625 3    60   Input ~ 0
OUT2
Text GLabel 6625 1625 3    60   Input ~ 0
OUT3
Text GLabel 6725 1625 3    60   Input ~ 0
OUT4
Text GLabel 6825 1625 3    60   Input ~ 0
OUT5
Text GLabel 4350 3500 1    60   Input ~ 0
OUT0
Text GLabel 4450 3500 1    60   Input ~ 0
OUT1
Text GLabel 4550 3500 1    60   Input ~ 0
OUT2
Text GLabel 4650 3500 1    60   Input ~ 0
OUT3
Text GLabel 4750 3500 1    60   Input ~ 0
OUT4
Text GLabel 4850 3500 1    60   Input ~ 0
OUT5
$Comp
L Conn_01x06 SensorInputHeader1
U 1 1 5AAA9643
P 4650 3700
F 0 "SensorInputHeader1" H 4650 4000 50  0000 C CNN
F 1 "SensorInputHeader" H 4650 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 4650 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	0    1    1    0   
$EndComp
$Comp
L Conn_01x04 BluetoothOutHeader1
U 1 1 5AAA9680
P 4750 1800
F 0 "BluetoothOutHeader1" H 4750 2000 50  0000 C CNN
F 1 "BluetoothOutputHeader" H 4750 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04_Pitch2.54mm" H 4750 1800 50  0001 C CNN
F 3 "" H 4750 1800 50  0001 C CNN
	1    4750 1800
	0    1    1    0   
$EndComp
Text GLabel 5930 5040 0    60   Input ~ 0
SDA
Text GLabel 5930 4940 0    60   Input ~ 0
SCK
Text GLabel 5930 4840 0    60   Input ~ 0
MOSI
Text GLabel 5930 4740 0    60   Input ~ 0
MISO
Text GLabel 5930 4640 0    60   Input ~ 0
GND
Text GLabel 5930 4540 0    60   Input ~ 0
VCC3.3
Text GLabel 7650 1750 0    60   Input ~ 0
SDA
Text GLabel 7650 1650 0    60   Input ~ 0
SCK
Text GLabel 7650 1550 0    60   Input ~ 0
MOSI
Text GLabel 7650 1450 0    60   Input ~ 0
MISO
$Comp
L Conn_01x05 RFIDOutputHeader1
U 1 1 5AB39987
P 7850 1550
F 0 "RFIDOutputHeader1" H 7850 1850 50  0000 C CNN
F 1 "Conn_01x05" H 7850 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 7850 1550 50  0001 C CNN
F 3 "" H 7850 1550 50  0001 C CNN
	1    7850 1550
	1    0    0    -1  
$EndComp
Text GLabel 7650 1350 0    60   Input ~ 0
VCC3.3
Text GLabel 3525 3700 2    60   Input ~ 0
GND
Text GLabel 3525 3800 2    60   Input ~ 0
GND
Text GLabel 3525 3900 2    60   Input ~ 0
GND
Text GLabel 3525 4000 2    60   Input ~ 0
GND
Text GLabel 2575 2950 0    60   Input ~ 0
Vcc
Text GLabel 2575 3050 0    60   Input ~ 0
Vcc
Text GLabel 2575 3150 0    60   Input ~ 0
Vcc
Text GLabel 2575 3250 0    60   Input ~ 0
Vcc
$Comp
L Conn_01x06 Conn_01x6
U 1 1 5AB3AABA
P 6130 4740
F 0 "Conn_01x6" H 6130 5040 50  0000 C CNN
F 1 "RFIDInplugHeader" H 6130 4340 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 6130 4740 50  0001 C CNN
F 3 "" H 6130 4740 50  0001 C CNN
	1    6130 4740
	1    0    0    -1  
$EndComp
$EndSCHEMATC
