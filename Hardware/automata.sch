EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:embedded-microcontrollers
LIBS:myparts
LIBS:automata-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 apr 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430G2553IN20 U1
U 1 1 52DC27FD
P 4200 2900
F 0 "U1" H 6650 3000 60  0000 C CNN
F 1 "MSP430G2553IN20" H 5500 1600 60  0000 C CNN
F 2 "~" H 4200 2900 60  0000 C CNN
F 3 "~" H 4200 2900 60  0000 C CNN
	1    4200 2900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 534C74B0
P 5500 2250
F 0 "#PWR2" H 5500 2350 30  0001 C CNN
F 1 "VCC" H 5500 2350 30  0000 C CNN
F 2 "" H 5500 2250 60  0000 C CNN
F 3 "" H 5500 2250 60  0000 C CNN
	1    5500 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 534C74BF
P 5500 5350
F 0 "#PWR3" H 5500 5350 30  0001 C CNN
F 1 "GND" H 5500 5280 30  0001 C CNN
F 2 "" H 5500 5350 60  0000 C CNN
F 3 "" H 5500 5350 60  0000 C CNN
	1    5500 5350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 534C7525
P 3400 4100
F 0 "R1" V 3480 4100 40  0000 C CNN
F 1 "47k" V 3407 4101 40  0000 C CNN
F 2 "~" V 3330 4100 30  0000 C CNN
F 3 "~" H 3400 4100 30  0000 C CNN
	1    3400 4100
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR1
U 1 1 534C756E
P 3050 4100
F 0 "#PWR1" H 3050 4200 30  0001 C CNN
F 1 "VCC" V 3050 4200 30  0000 C CNN
F 2 "" H 3050 4100 60  0000 C CNN
F 3 "" H 3050 4100 60  0000 C CNN
	1    3050 4100
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q1
U 1 1 534C765B
P 3650 3000
F 0 "Q1" H 3650 2850 50  0000 R CNN
F 1 "PN2222A" H 3650 3150 50  0000 R CNN
F 2 "~" H 3650 3000 60  0000 C CNN
F 3 "~" H 3650 3000 60  0000 C CNN
	1    3650 3000
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 534C7858
P 5700 2400
F 0 "C1" H 5700 2500 40  0000 L CNN
F 1 "0.1uF" H 5706 2315 40  0000 L CNN
F 2 "~" H 5738 2250 30  0000 C CNN
F 3 "~" H 5700 2400 60  0000 C CNN
	1    5700 2400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR4
U 1 1 534C788C
P 6150 2400
F 0 "#PWR4" H 6150 2400 30  0001 C CNN
F 1 "GND" H 6150 2330 30  0001 C CNN
F 2 "" H 6150 2400 60  0000 C CNN
F 3 "" H 6150 2400 60  0000 C CNN
	1    6150 2400
	0    -1   -1   0   
$EndComp
$Comp
L CONN_8 P1
U 1 1 534C8646
P 2050 3700
F 0 "P1" V 2000 3700 60  0000 C CNN
F 1 "PORT 1" V 2100 3700 60  0000 C CNN
F 2 "~" H 2050 3700 60  0000 C CNN
F 3 "~" H 2050 3700 60  0000 C CNN
	1    2050 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 5350 5500 4950
Wire Wire Line
	5500 2600 5500 2250
Wire Wire Line
	3900 4100 3650 4100
Wire Wire Line
	3900 3200 3650 3200
Wire Wire Line
	5900 2400 6150 2400
Wire Wire Line
	3150 4100 3050 4100
Connection ~ 5500 2400
Wire Wire Line
	3850 2900 3850 2750
Wire Wire Line
	3450 2900 3450 2750
Wire Wire Line
	3900 3300 3650 3300
Wire Wire Line
	3900 3400 3650 3400
Wire Wire Line
	3900 3500 3650 3500
Wire Wire Line
	3900 3600 3650 3600
Wire Wire Line
	3900 3700 3650 3700
Wire Wire Line
	3900 3800 3650 3800
Wire Wire Line
	3900 3900 3650 3900
Wire Wire Line
	3900 4200 3000 4200
Wire Wire Line
	3900 4400 3650 4400
Wire Wire Line
	3900 4500 3650 4500
Text Label 3650 4500 0    60   ~ 0
P2.7
Text Label 3650 4400 0    60   ~ 0
P2.6
Text Label 3000 4200 0    60   ~ 0
TEST
Wire Wire Line
	3650 4100 3650 4000
Wire Wire Line
	3650 4000 3000 4000
Text Label 3000 4000 0    60   ~ 0
RST
Text Label 3650 3900 0    60   ~ 0
P1.7
Text Label 3650 3800 0    60   ~ 0
P1.6
Text Label 3650 3700 0    60   ~ 0
P1.5
Text Label 3650 3600 0    60   ~ 0
P1.4
Text Label 3650 3500 0    60   ~ 0
P1.3
Text Label 3650 3400 0    60   ~ 0
P1.2
Text Label 3650 3300 0    60   ~ 0
P1.1
Text Label 3650 3200 0    60   ~ 0
P1.0
Text Label 3450 2750 1    60   ~ 0
P1.0_COL
Text Label 3850 2750 1    60   ~ 0
P1.0_EMIT
Text Label 2400 4050 0    60   ~ 0
P1.0
Text Label 2400 3950 0    60   ~ 0
P1.1
Text Label 2400 3850 0    60   ~ 0
P1.2
Text Label 2400 3750 0    60   ~ 0
P1.3
Text Label 2400 3650 0    60   ~ 0
P1.4
Text Label 2400 3550 0    60   ~ 0
P1.5
Text Label 2400 3450 0    60   ~ 0
P1.6
Text Label 2400 3350 0    60   ~ 0
P1.7
$Comp
L CONN_8 P2
U 1 1 534C8B6F
P 2050 2800
F 0 "P2" V 2000 2800 60  0000 C CNN
F 1 "PORT 2" V 2100 2800 60  0000 C CNN
F 2 "~" H 2050 2800 60  0000 C CNN
F 3 "~" H 2050 2800 60  0000 C CNN
	1    2050 2800
	-1   0    0    1   
$EndComp
Text Label 7000 4550 0    60   ~ 0
P2.5
Text Label 7000 4450 0    60   ~ 0
P2.4
Text Label 7000 4350 0    60   ~ 0
P2.3
Text Label 7000 4250 0    60   ~ 0
P2.2
Text Label 7000 4150 0    60   ~ 0
P2.1
Text Label 7000 4050 0    60   ~ 0
P2.0
Text Label 2400 3150 0    60   ~ 0
P2.0
Text Label 2400 3050 0    60   ~ 0
P2.1
Text Label 2400 2950 0    60   ~ 0
P2.2
Text Label 2400 2850 0    60   ~ 0
P2.3
Text Label 2400 2750 0    60   ~ 0
P2.4
Text Label 2400 2650 0    60   ~ 0
P2.5
Text Label 2400 2550 0    60   ~ 0
P2.6
Text Label 2400 2450 0    60   ~ 0
P2.7
$EndSCHEMATC
