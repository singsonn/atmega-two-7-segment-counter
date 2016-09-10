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
LIBS:atmega-7-segment-0-99-counter-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "0-99 COUNTER WITH ATMEGA328P & TWO 7-SEGMENT LED"
Date "2016-09-07"
Rev "v1"
Comp "SINGSONN"
Comment1 "https://github.com/singsonn/atmega-two-7-segment-counter"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LM7805CT U2
U 1 1 57CEF320
P 1900 900
F 0 "U2" H 1700 1100 50  0000 C CNN
F 1 "LM7805CT" H 1900 1100 50  0000 L CNN
F 2 "TO-220" H 1900 1000 50  0000 C CIN
F 3 "" H 1900 900 50  0000 C CNN
	1    1900 900 
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-P IC1
U 1 1 57CF04DF
P 5450 3700
F 0 "IC1" H 4700 4950 50  0000 L BNN
F 1 "ATMEGA328P-P" H 5850 2300 50  0000 L BNN
F 2 "DIL28" H 5450 3700 50  0000 C CIN
F 3 "" H 5450 3700 50  0000 C CNN
	1    5450 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57CF051A
P 4350 5150
F 0 "#PWR01" H 4350 4900 50  0001 C CNN
F 1 "GND" H 4350 5000 50  0000 C CNN
F 2 "" H 4350 5150 50  0000 C CNN
F 3 "" H 4350 5150 50  0000 C CNN
	1    4350 5150
	1    0    0    -1  
$EndComp
$Comp
L 7SEGM LEFT
U 1 1 57D020AC
P 9900 2600
F 0 "LEFT" H 9900 3250 50  0000 C CNN
F 1 "7SEGM" H 9900 1950 50  0000 C CNN
F 2 "" H 9900 2600 50  0000 C CNN
F 3 "" H 9900 2600 50  0000 C CNN
	1    9900 2600
	1    0    0    -1  
$EndComp
$Comp
L 7SEGM RIGHT
U 1 1 57D0216C
P 9900 4000
F 0 "RIGHT" H 9900 4650 50  0000 C CNN
F 1 "7SEGM" H 9900 3350 50  0000 C CNN
F 2 "" H 9900 4000 50  0000 C CNN
F 3 "" H 9900 4000 50  0000 C CNN
	1    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 57D03048
P 4200 2550
F 0 "C7" H 4225 2650 50  0000 L CNN
F 1 "0.1uF" H 4225 2450 50  0000 L CNN
F 2 "" H 4238 2400 50  0000 C CNN
F 3 "" H 4200 2550 50  0000 C CNN
	1    4200 2550
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 57D03089
P 4250 3450
F 0 "C8" H 4275 3550 50  0000 L CNN
F 1 "0.1uF" H 4275 3350 50  0000 L CNN
F 2 "" H 4288 3300 50  0000 C CNN
F 3 "" H 4250 3450 50  0000 C CNN
	1    4250 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57D03160
P 4200 2350
F 0 "#PWR02" H 4200 2100 50  0001 C CNN
F 1 "GND" H 4200 2200 50  0000 C CNN
F 2 "" H 4200 2350 50  0000 C CNN
F 3 "" H 4200 2350 50  0000 C CNN
	1    4200 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR03
U 1 1 57D03186
P 4250 3750
F 0 "#PWR03" H 4250 3500 50  0001 C CNN
F 1 "GND" H 4250 3600 50  0000 C CNN
F 2 "" H 4250 3750 50  0000 C CNN
F 3 "" H 4250 3750 50  0000 C CNN
	1    4250 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57D03304
P 1900 1350
F 0 "#PWR04" H 1900 1100 50  0001 C CNN
F 1 "GND" H 1900 1200 50  0000 C CNN
F 2 "" H 1900 1350 50  0000 C CNN
F 3 "" H 1900 1350 50  0000 C CNN
	1    1900 1350
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW_RESET_COUNTER
U 1 1 57D03381
P 800 6800
F 0 "SW_RESET_COUNTER" H 950 6910 50  0000 C CNN
F 1 "SW_PUSH" H 800 6720 50  0000 C CNN
F 2 "" H 800 6800 50  0000 C CNN
F 3 "" H 800 6800 50  0000 C CNN
	1    800  6800
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 57D0347F
P 800 5950
F 0 "R12" V 880 5950 50  0000 C CNN
F 1 "2.2k" V 800 5950 50  0000 C CNN
F 2 "" V 730 5950 50  0000 C CNN
F 3 "" H 800 5950 50  0000 C CNN
	1    800  5950
	1    0    0    -1  
$EndComp
$Comp
L R R13
U 1 1 57D034BA
P 1150 6450
F 0 "R13" V 1230 6450 50  0000 C CNN
F 1 "5.1k" V 1150 6450 50  0000 C CNN
F 2 "" V 1080 6450 50  0000 C CNN
F 3 "" H 1150 6450 50  0000 C CNN
	1    1150 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 57D034F5
P 800 7250
F 0 "#PWR05" H 800 7000 50  0001 C CNN
F 1 "GND" H 800 7100 50  0000 C CNN
F 2 "" H 800 7250 50  0000 C CNN
F 3 "" H 800 7250 50  0000 C CNN
	1    800  7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C11
U 1 1 57D03554
P 1400 6800
F 0 "C11" H 1425 6900 50  0000 L CNN
F 1 "3.3uF" H 1425 6700 50  0000 L CNN
F 2 "" H 1400 6800 50  0000 C CNN
F 3 "" H 1400 6800 50  0000 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q1
U 1 1 57D04261
P 8950 5800
F 0 "Q1" H 9150 5875 50  0000 L CNN
F 1 "PN2222A" H 9150 5800 50  0000 L CNN
F 2 "" H 9150 5725 50  0000 L CIN
F 3 "" H 8950 5800 50  0000 L CNN
	1    8950 5800
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q2
U 1 1 57D04346
P 9900 5800
F 0 "Q2" H 10100 5875 50  0000 L CNN
F 1 "PN2222A" H 10100 5800 50  0000 L CNN
F 2 "" H 10100 5725 50  0000 L CIN
F 3 "" H 9900 5800 50  0000 L CNN
	1    9900 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57D0453D
P 9550 6300
F 0 "#PWR06" H 9550 6050 50  0001 C CNN
F 1 "GND" H 9550 6150 50  0000 C CNN
F 2 "" H 9550 6300 50  0000 C CNN
F 3 "" H 9550 6300 50  0000 C CNN
	1    9550 6300
	1    0    0    -1  
$EndComp
NoConn ~ 9150 2200
NoConn ~ 9150 3000
NoConn ~ 9150 3600
NoConn ~ 9150 4400
$Comp
L SW_PUSH SW_INCREMENT
U 1 1 57D05306
P 2700 6800
F 0 "SW_INCREMENT" H 2850 6910 50  0000 C CNN
F 1 "SW_PUSH" H 2700 6720 50  0000 C CNN
F 2 "" H 2700 6800 50  0000 C CNN
F 3 "" H 2700 6800 50  0000 C CNN
	1    2700 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 57D0530C
P 2700 5950
F 0 "R15" V 2780 5950 50  0000 C CNN
F 1 "2.2k" V 2700 5950 50  0000 C CNN
F 2 "" V 2630 5950 50  0000 C CNN
F 3 "" H 2700 5950 50  0000 C CNN
	1    2700 5950
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 57D05312
P 3050 6450
F 0 "R14" V 3130 6450 50  0000 C CNN
F 1 "5.1k" V 3050 6450 50  0000 C CNN
F 2 "" V 2980 6450 50  0000 C CNN
F 3 "" H 3050 6450 50  0000 C CNN
	1    3050 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 57D05318
P 2700 7250
F 0 "#PWR07" H 2700 7000 50  0001 C CNN
F 1 "GND" H 2700 7100 50  0000 C CNN
F 2 "" H 2700 7250 50  0000 C CNN
F 3 "" H 2700 7250 50  0000 C CNN
	1    2700 7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C12
U 1 1 57D0531E
P 3300 6800
F 0 "C12" H 3325 6900 50  0000 L CNN
F 1 "3.3uF" H 3325 6700 50  0000 L CNN
F 2 "" H 3300 6800 50  0000 C CNN
F 3 "" H 3300 6800 50  0000 C CNN
	1    3300 6800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW_DECREMENT
U 1 1 57D05522
P 4750 6800
F 0 "SW_DECREMENT" H 4900 6910 50  0000 C CNN
F 1 "SW_PUSH" H 4750 6720 50  0000 C CNN
F 2 "" H 4750 6800 50  0000 C CNN
F 3 "" H 4750 6800 50  0000 C CNN
	1    4750 6800
	0    -1   -1   0   
$EndComp
$Comp
L R R16
U 1 1 57D05528
P 4750 5950
F 0 "R16" V 4830 5950 50  0000 C CNN
F 1 "2.2k" V 4750 5950 50  0000 C CNN
F 2 "" V 4680 5950 50  0000 C CNN
F 3 "" H 4750 5950 50  0000 C CNN
	1    4750 5950
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 57D0552E
P 5100 6450
F 0 "R17" V 5180 6450 50  0000 C CNN
F 1 "5.1k" V 5100 6450 50  0000 C CNN
F 2 "" V 5030 6450 50  0000 C CNN
F 3 "" H 5100 6450 50  0000 C CNN
	1    5100 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR08
U 1 1 57D05534
P 4750 7250
F 0 "#PWR08" H 4750 7000 50  0001 C CNN
F 1 "GND" H 4750 7100 50  0000 C CNN
F 2 "" H 4750 7250 50  0000 C CNN
F 3 "" H 4750 7250 50  0000 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C13
U 1 1 57D0553A
P 5350 6800
F 0 "C13" H 5375 6900 50  0000 L CNN
F 1 "3.3uF" H 5375 6700 50  0000 L CNN
F 2 "" H 5350 6800 50  0000 C CNN
F 3 "" H 5350 6800 50  0000 C CNN
	1    5350 6800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW_RESET_MCU
U 1 1 57D05B44
P 800 3700
F 0 "SW_RESET_MCU" H 950 3810 50  0000 C CNN
F 1 "SW_PUSH" H 800 3620 50  0000 C CNN
F 2 "" H 800 3700 50  0000 C CNN
F 3 "" H 800 3700 50  0000 C CNN
	1    800  3700
	0    -1   -1   0   
$EndComp
$Comp
L R R10
U 1 1 57D05B4A
P 800 4450
F 0 "R10" V 880 4450 50  0000 C CNN
F 1 "2.2k" V 800 4450 50  0000 C CNN
F 2 "" V 730 4450 50  0000 C CNN
F 3 "" H 800 4450 50  0000 C CNN
	1    800  4450
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 57D05B50
P 1150 4150
F 0 "R11" V 1230 4150 50  0000 C CNN
F 1 "5.1k" V 1150 4150 50  0000 C CNN
F 2 "" V 1080 4150 50  0000 C CNN
F 3 "" H 1150 4150 50  0000 C CNN
	1    1150 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 57D05B56
P 800 4950
F 0 "#PWR09" H 800 4700 50  0001 C CNN
F 1 "GND" H 800 4800 50  0000 C CNN
F 2 "" H 800 4950 50  0000 C CNN
F 3 "" H 800 4950 50  0000 C CNN
	1    800  4950
	1    0    0    -1  
$EndComp
$Comp
L CP1 C10
U 1 1 57D05B5C
P 1400 4500
F 0 "C10" H 1425 4600 50  0000 L CNN
F 1 "3.3uF" H 1425 4400 50  0000 L CNN
F 2 "" H 1400 4500 50  0000 C CNN
F 3 "" H 1400 4500 50  0000 C CNN
	1    1400 4500
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 1 1 57D05B62
P 1950 4150
F 0 "U1" H 2100 4250 50  0000 C CNN
F 1 "74HC14" H 2150 4050 50  0000 C CNN
F 2 "" H 1950 4150 50  0000 C CNN
F 3 "" H 1950 4150 50  0000 C CNN
	1    1950 4150
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 5 1 57D07C11
P 3850 6450
F 0 "U1" H 4000 6550 50  0000 C CNN
F 1 "74HC14" H 4050 6350 50  0000 C CNN
F 2 "" H 3850 6450 50  0000 C CNN
F 3 "" H 3850 6450 50  0000 C CNN
	5    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 6 1 57D081BD
P 5900 6450
F 0 "U1" H 6050 6550 50  0000 C CNN
F 1 "74HC14" H 6100 6350 50  0000 C CNN
F 2 "" H 5900 6450 50  0000 C CNN
F 3 "" H 5900 6450 50  0000 C CNN
	6    5900 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 2 1 57D083B0
P 1950 6450
F 0 "U1" H 2100 6550 50  0000 C CNN
F 1 "74HC14" H 2150 6350 50  0000 C CNN
F 2 "" H 1950 6450 50  0000 C CNN
F 3 "" H 1950 6450 50  0000 C CNN
	2    1950 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U1
U 3 1 57D087BB
P 7700 5800
F 0 "U1" H 7850 5900 50  0000 C CNN
F 1 "74HC14" H 7900 5700 50  0000 C CNN
F 2 "" H 7700 5800 50  0000 C CNN
F 3 "" H 7700 5800 50  0000 C CNN
	3    7700 5800
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 57D0914B
P 3550 1200
F 0 "D1" H 3550 1300 50  0000 C CNN
F 1 "LED" H 3550 1100 50  0000 C CNN
F 2 "" H 3550 1200 50  0000 C CNN
F 3 "" H 3550 1200 50  0000 C CNN
	1    3550 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 57D09216
P 3550 1650
F 0 "R1" V 3630 1650 50  0000 C CNN
F 1 "220" V 3550 1650 50  0000 C CNN
F 2 "" V 3480 1650 50  0000 C CNN
F 3 "" H 3550 1650 50  0000 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 57D09293
P 3550 1900
F 0 "#PWR010" H 3550 1650 50  0001 C CNN
F 1 "GND" H 3550 1750 50  0000 C CNN
F 2 "" H 3550 1900 50  0000 C CNN
F 3 "" H 3550 1900 50  0000 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 57D09F61
P 4200 1800
F 0 "C6" H 4225 1900 50  0000 L CNN
F 1 "0.1uF" H 4225 1700 50  0000 L CNN
F 2 "" H 4238 1650 50  0000 C CNN
F 3 "" H 4200 1800 50  0000 C CNN
	1    4200 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57D09F67
P 4200 1600
F 0 "#PWR011" H 4200 1350 50  0001 C CNN
F 1 "GND" H 4200 1450 50  0000 C CNN
F 2 "" H 4200 1600 50  0000 C CNN
F 3 "" H 4200 1600 50  0000 C CNN
	1    4200 1600
	-1   0    0    1   
$EndComp
$Comp
L Battery 9V
U 1 1 57D0A107
P 800 1050
F 0 "9V" H 900 1100 50  0000 L CNN
F 1 "Battery" H 900 1000 50  0000 L CNN
F 2 "" V 800 1090 50  0000 C CNN
F 3 "" V 800 1090 50  0000 C CNN
	1    800  1050
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57D0A79D
P 2450 1100
F 0 "C2" H 2475 1200 50  0000 L CNN
F 1 "0.1uF" H 2475 1000 50  0000 L CNN
F 2 "" H 2488 950 50  0000 C CNN
F 3 "" H 2450 1100 50  0000 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57D0A826
P 1400 1100
F 0 "C1" H 1425 1200 50  0000 L CNN
F 1 "1uF" H 1425 1000 50  0000 L CNN
F 2 "" H 1438 950 50  0000 C CNN
F 3 "" H 1400 1100 50  0000 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 57D0A8FA
P 2850 1100
F 0 "C3" H 2875 1200 50  0000 L CNN
F 1 "1uF" H 2875 1000 50  0000 L CNN
F 2 "" H 2850 1100 50  0000 C CNN
F 3 "" H 2850 1100 50  0000 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
NoConn ~ 6450 4300
NoConn ~ 6450 4200
$Comp
L Crystal Y1
U 1 1 57D0B6D0
P 7350 2250
F 0 "Y1" H 7350 2400 50  0000 C CNN
F 1 "20MHz" H 7350 2100 50  0000 C CNN
F 2 "" H 7350 2250 50  0000 C CNN
F 3 "" H 7350 2250 50  0000 C CNN
	1    7350 2250
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 57D0C106
P 7100 1800
F 0 "C4" H 7125 1900 50  0000 L CNN
F 1 "22pF" H 7125 1700 50  0000 L CNN
F 2 "" H 7138 1650 50  0000 C CNN
F 3 "" H 7100 1800 50  0000 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 57D0C1AA
P 7600 1800
F 0 "C5" H 7625 1900 50  0000 L CNN
F 1 "22pF" H 7625 1700 50  0000 L CNN
F 2 "" H 7638 1650 50  0000 C CNN
F 3 "" H 7600 1800 50  0000 C CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 57D0C23A
P 7300 1550
F 0 "#PWR012" H 7300 1300 50  0001 C CNN
F 1 "GND" H 7300 1400 50  0000 C CNN
F 2 "" H 7300 1550 50  0000 C CNN
F 3 "" H 7300 1550 50  0000 C CNN
	1    7300 1550
	-1   0    0    1   
$EndComp
$Comp
L R R20
U 1 1 57D09C83
P 8650 2250
F 0 "R20" V 8730 2250 50  0000 C CNN
F 1 "1k" V 8650 2250 50  0000 C CNN
F 2 "" V 8580 2250 50  0000 C CNN
F 3 "" H 8650 2250 50  0000 C CNN
	1    8650 2250
	0    1    1    0   
$EndComp
$Comp
L R R21
U 1 1 57D0A8FB
P 8650 2400
F 0 "R21" V 8730 2400 50  0000 C CNN
F 1 "1k" V 8650 2400 50  0000 C CNN
F 2 "" V 8580 2400 50  0000 C CNN
F 3 "" H 8650 2400 50  0000 C CNN
	1    8650 2400
	0    1    1    0   
$EndComp
$Comp
L R R22
U 1 1 57D0B1FD
P 8650 2550
F 0 "R22" V 8730 2550 50  0000 C CNN
F 1 "1k" V 8650 2550 50  0000 C CNN
F 2 "" V 8580 2550 50  0000 C CNN
F 3 "" H 8650 2550 50  0000 C CNN
	1    8650 2550
	0    1    1    0   
$EndComp
$Comp
L R R23
U 1 1 57D0B28B
P 8650 2700
F 0 "R23" V 8730 2700 50  0000 C CNN
F 1 "1k" V 8650 2700 50  0000 C CNN
F 2 "" V 8580 2700 50  0000 C CNN
F 3 "" H 8650 2700 50  0000 C CNN
	1    8650 2700
	0    1    1    0   
$EndComp
$Comp
L R R24
U 1 1 57D0B321
P 8650 2850
F 0 "R24" V 8730 2850 50  0000 C CNN
F 1 "1k" V 8650 2850 50  0000 C CNN
F 2 "" V 8580 2850 50  0000 C CNN
F 3 "" H 8650 2850 50  0000 C CNN
	1    8650 2850
	0    1    1    0   
$EndComp
$Comp
L R R25
U 1 1 57D0B3B4
P 8650 3000
F 0 "R25" V 8730 3000 50  0000 C CNN
F 1 "1k" V 8650 3000 50  0000 C CNN
F 2 "" V 8580 3000 50  0000 C CNN
F 3 "" H 8650 3000 50  0000 C CNN
	1    8650 3000
	0    1    1    0   
$EndComp
$Comp
L R R26
U 1 1 57D0B44A
P 8650 3150
F 0 "R26" V 8730 3150 50  0000 C CNN
F 1 "1k" V 8650 3150 50  0000 C CNN
F 2 "" V 8580 3150 50  0000 C CNN
F 3 "" H 8650 3150 50  0000 C CNN
	1    8650 3150
	0    1    1    0   
$EndComp
$Comp
L R R27
U 1 1 57D0CCAF
P 8750 3650
F 0 "R27" V 8830 3650 50  0000 C CNN
F 1 "1k" V 8750 3650 50  0000 C CNN
F 2 "" V 8680 3650 50  0000 C CNN
F 3 "" H 8750 3650 50  0000 C CNN
	1    8750 3650
	0    1    1    0   
$EndComp
$Comp
L R R28
U 1 1 57D0CCB5
P 8750 3800
F 0 "R28" V 8830 3800 50  0000 C CNN
F 1 "1k" V 8750 3800 50  0000 C CNN
F 2 "" V 8680 3800 50  0000 C CNN
F 3 "" H 8750 3800 50  0000 C CNN
	1    8750 3800
	0    1    1    0   
$EndComp
$Comp
L R R29
U 1 1 57D0CCBB
P 8750 3950
F 0 "R29" V 8830 3950 50  0000 C CNN
F 1 "1k" V 8750 3950 50  0000 C CNN
F 2 "" V 8680 3950 50  0000 C CNN
F 3 "" H 8750 3950 50  0000 C CNN
	1    8750 3950
	0    1    1    0   
$EndComp
$Comp
L R R30
U 1 1 57D0CCC1
P 8750 4100
F 0 "R30" V 8830 4100 50  0000 C CNN
F 1 "1k" V 8750 4100 50  0000 C CNN
F 2 "" V 8680 4100 50  0000 C CNN
F 3 "" H 8750 4100 50  0000 C CNN
	1    8750 4100
	0    1    1    0   
$EndComp
$Comp
L R R31
U 1 1 57D0CCC7
P 8750 4250
F 0 "R31" V 8830 4250 50  0000 C CNN
F 1 "1k" V 8750 4250 50  0000 C CNN
F 2 "" V 8680 4250 50  0000 C CNN
F 3 "" H 8750 4250 50  0000 C CNN
	1    8750 4250
	0    1    1    0   
$EndComp
$Comp
L R R32
U 1 1 57D0CCCD
P 8050 4400
F 0 "R32" V 8130 4400 50  0000 C CNN
F 1 "1k" V 8050 4400 50  0000 C CNN
F 2 "" V 7980 4400 50  0000 C CNN
F 3 "" H 8050 4400 50  0000 C CNN
	1    8050 4400
	0    1    1    0   
$EndComp
$Comp
L R R33
U 1 1 57D0CCD3
P 8050 4550
F 0 "R33" V 8130 4550 50  0000 C CNN
F 1 "1k" V 8050 4550 50  0000 C CNN
F 2 "" V 7980 4550 50  0000 C CNN
F 3 "" H 8050 4550 50  0000 C CNN
	1    8050 4550
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 57D108BD
P 8400 5800
F 0 "R2" V 8480 5800 50  0000 C CNN
F 1 "220" V 8400 5800 50  0000 C CNN
F 2 "" V 8330 5800 50  0000 C CNN
F 3 "" H 8400 5800 50  0000 C CNN
	1    8400 5800
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 57D10FFC
P 9600 5300
F 0 "R3" V 9680 5300 50  0000 C CNN
F 1 "220" V 9600 5300 50  0000 C CNN
F 2 "" V 9530 5300 50  0000 C CNN
F 3 "" H 9600 5300 50  0000 C CNN
	1    9600 5300
	-1   0    0    1   
$EndComp
$Comp
L CONN_02X05 P1
U 1 1 57D11ADA
P 6300 1200
F 0 "P1" H 6300 1500 50  0000 C CNN
F 1 "SPI" H 6300 900 50  0000 C CNN
F 2 "" H 6300 0   50  0000 C CNN
F 3 "" H 6300 0   50  0000 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 57D12175
P 6950 1100
F 0 "#PWR013" H 6950 850 50  0001 C CNN
F 1 "GND" H 6950 950 50  0000 C CNN
F 2 "" H 6950 1100 50  0000 C CNN
F 3 "" H 6950 1100 50  0000 C CNN
	1    6950 1100
	0    -1   -1   0   
$EndComp
NoConn ~ 6050 1100
Wire Wire Line
	4550 4800 4350 4800
Wire Wire Line
	4350 4800 4350 4900
Wire Wire Line
	4350 4900 4350 5150
Wire Wire Line
	4550 4900 4350 4900
Connection ~ 4350 4900
Wire Wire Line
	6450 3450 7700 3450
Wire Wire Line
	7700 3450 8550 3450
Wire Wire Line
	7700 3450 7700 2250
Wire Wire Line
	6450 3550 7800 3550
Wire Wire Line
	7800 3550 8500 3550
Wire Wire Line
	6450 3650 7900 3650
Wire Wire Line
	7900 3650 8400 3650
Wire Wire Line
	6450 3750 8000 3750
Wire Wire Line
	8000 3750 8350 3750
Wire Wire Line
	8000 3750 8000 2700
Wire Wire Line
	6450 3850 8100 3850
Wire Wire Line
	8100 3850 8300 3850
Wire Wire Line
	8100 3850 8100 2850
Wire Wire Line
	6450 3950 7650 3950
Wire Wire Line
	7650 3950 8200 3950
Wire Wire Line
	8200 3950 8200 3000
Wire Wire Line
	7900 3650 7900 2550
Wire Wire Line
	6450 2700 7450 2700
Wire Wire Line
	2300 850  2450 850 
Wire Wire Line
	2450 850  2850 850 
Wire Wire Line
	2850 850  3550 850 
Wire Wire Line
	3550 850  3900 850 
Wire Wire Line
	3900 850  6800 850 
Wire Wire Line
	3900 5600 3900 3200
Wire Wire Line
	3900 3200 3900 2900
Wire Wire Line
	3900 2900 3900 2050
Wire Wire Line
	3900 2050 3900 850 
Wire Wire Line
	3900 3200 4250 3200
Wire Wire Line
	4250 3200 4550 3200
Wire Wire Line
	800  2900 3900 2900
Wire Wire Line
	3900 2900 4200 2900
Wire Wire Line
	4200 2900 4550 2900
Connection ~ 3900 2900
Wire Wire Line
	3900 2050 4200 2050
Wire Wire Line
	4200 2050 4550 2050
Wire Wire Line
	4250 3300 4250 3200
Connection ~ 4250 3200
Wire Wire Line
	4200 2050 4200 1950
Wire Wire Line
	4250 3600 4250 3750
Wire Wire Line
	1900 1350 1900 1150
Wire Wire Line
	800  6100 800  6450
Wire Wire Line
	800  6450 800  6500
Wire Wire Line
	800  6450 1000 6450
Connection ~ 800  6450
Wire Wire Line
	800  7100 800  7150
Wire Wire Line
	800  7150 800  7250
Wire Wire Line
	1300 6450 1400 6450
Wire Wire Line
	1400 6450 1500 6450
Wire Wire Line
	1400 6650 1400 6450
Connection ~ 1400 6450
Connection ~ 3900 3200
Wire Wire Line
	1400 6950 1400 7150
Wire Wire Line
	1400 7150 800  7150
Connection ~ 800  7150
Wire Wire Line
	6850 4050 6450 4050
Wire Wire Line
	6850 2200 6850 4050
Wire Wire Line
	6850 4050 6850 5500
Wire Wire Line
	9050 6000 9050 6200
Wire Wire Line
	9050 6200 9550 6200
Wire Wire Line
	9550 6200 10000 6200
Wire Wire Line
	9550 6200 9550 6300
Connection ~ 9550 6200
Wire Wire Line
	9150 4800 10000 4800
Connection ~ 3900 2050
Wire Wire Line
	2700 6100 2700 6450
Wire Wire Line
	2700 6450 2700 6500
Wire Wire Line
	2700 6450 2900 6450
Connection ~ 2700 6450
Wire Wire Line
	2700 7100 2700 7150
Wire Wire Line
	2700 7150 2700 7250
Wire Wire Line
	3200 6450 3300 6450
Wire Wire Line
	3300 6450 3400 6450
Wire Wire Line
	3300 6650 3300 6450
Connection ~ 3300 6450
Wire Wire Line
	3300 6950 3300 7150
Wire Wire Line
	3300 7150 2700 7150
Connection ~ 2700 7150
Wire Wire Line
	4750 6100 4750 6450
Wire Wire Line
	4750 6450 4750 6500
Wire Wire Line
	4750 6450 4950 6450
Connection ~ 4750 6450
Wire Wire Line
	4750 7100 4750 7150
Wire Wire Line
	4750 7150 4750 7250
Wire Wire Line
	5250 6450 5350 6450
Wire Wire Line
	5350 6450 5450 6450
Wire Wire Line
	5350 6650 5350 6450
Connection ~ 5350 6450
Wire Wire Line
	5350 6950 5350 7150
Wire Wire Line
	5350 7150 4750 7150
Connection ~ 4750 7150
Wire Wire Line
	800  5600 2700 5600
Wire Wire Line
	2700 5600 3900 5600
Wire Wire Line
	3900 5600 4750 5600
Wire Wire Line
	2700 5600 2700 5800
Wire Wire Line
	800  4000 800  4150
Wire Wire Line
	800  4150 800  4300
Wire Wire Line
	1000 4150 800  4150
Connection ~ 800  4150
Wire Wire Line
	800  4600 800  4800
Wire Wire Line
	800  4800 800  4950
Wire Wire Line
	1300 4150 1400 4150
Wire Wire Line
	1400 4150 1500 4150
Wire Wire Line
	1400 4350 1400 4150
Connection ~ 1400 4150
Wire Wire Line
	1400 4650 1400 4800
Wire Wire Line
	1400 4800 800  4800
Connection ~ 800  4800
Wire Wire Line
	800  2900 800  3400
Wire Wire Line
	2700 4150 2400 4150
Wire Wire Line
	800  5600 800  5800
Connection ~ 2700 5600
Wire Wire Line
	4750 5600 4750 5800
Connection ~ 3900 5600
Wire Wire Line
	2700 4150 2700 5500
Wire Wire Line
	2700 5500 6850 5500
Wire Wire Line
	4300 6450 4350 6450
Wire Wire Line
	4350 6450 4350 5700
Wire Wire Line
	4350 5700 6950 5700
Wire Wire Line
	6950 5700 6950 4400
Wire Wire Line
	6950 4400 6450 4400
Wire Wire Line
	6350 6450 6650 6450
Wire Wire Line
	6650 6450 6650 5800
Wire Wire Line
	6650 5800 7050 5800
Wire Wire Line
	7050 5800 7050 4500
Wire Wire Line
	7050 4500 6450 4500
Wire Wire Line
	2400 6450 2500 6450
Wire Wire Line
	2500 6450 2500 5400
Wire Wire Line
	2500 5400 6650 5400
Wire Wire Line
	6650 5400 6650 4600
Wire Wire Line
	6650 4600 6450 4600
Wire Wire Line
	9600 5800 9700 5800
Wire Wire Line
	10000 4800 10000 5600
Wire Wire Line
	10000 6200 10000 6000
Wire Wire Line
	3550 1000 3550 850 
Connection ~ 3550 850 
Wire Wire Line
	3550 1400 3550 1500
Wire Wire Line
	3550 1800 3550 1900
Wire Wire Line
	4200 2700 4200 2900
Connection ~ 4200 2900
Wire Wire Line
	4200 2350 4200 2400
Wire Wire Line
	4200 1600 4200 1650
Wire Wire Line
	800  850  1400 850 
Wire Wire Line
	1400 850  1500 850 
Wire Wire Line
	800  1350 1400 1350
Wire Wire Line
	1400 1350 1900 1350
Wire Wire Line
	1900 1350 2450 1350
Wire Wire Line
	2450 1350 2850 1350
Wire Wire Line
	2450 950  2450 850 
Connection ~ 2450 850 
Wire Wire Line
	2850 950  2850 850 
Connection ~ 2850 850 
Wire Wire Line
	2850 1350 2850 1250
Connection ~ 1900 1350
Wire Wire Line
	2450 1250 2450 1350
Connection ~ 2450 1350
Wire Wire Line
	1400 1250 1400 1350
Connection ~ 1400 1350
Wire Wire Line
	1400 950  1400 850 
Connection ~ 1400 850 
Wire Wire Line
	7600 3300 6450 3300
Wire Wire Line
	7100 3200 6450 3200
Wire Wire Line
	7600 1950 7600 2250
Wire Wire Line
	7600 2250 7600 3300
Wire Wire Line
	7200 2250 7100 2250
Wire Wire Line
	7100 1950 7100 2250
Wire Wire Line
	7100 2250 7100 3200
Wire Wire Line
	7600 2250 7500 2250
Wire Wire Line
	7600 1550 7600 1650
Wire Wire Line
	7100 1550 7300 1550
Wire Wire Line
	7300 1550 7600 1550
Connection ~ 7300 1550
Connection ~ 7100 2250
Connection ~ 7600 2250
Wire Wire Line
	7700 2250 8500 2250
Wire Wire Line
	7800 3550 7800 2400
Wire Wire Line
	7800 2400 8500 2400
Wire Wire Line
	7900 2550 8500 2550
Wire Wire Line
	8000 2700 8500 2700
Wire Wire Line
	8100 2850 8500 2850
Wire Wire Line
	8200 3000 8500 3000
Wire Wire Line
	7450 2700 7450 3150
Wire Wire Line
	7450 3150 7450 4550
Wire Wire Line
	7450 3150 8500 3150
Wire Wire Line
	7450 4550 7900 4550
Connection ~ 7450 3150
Wire Wire Line
	8550 3450 8550 3650
Wire Wire Line
	8550 3650 8600 3650
Connection ~ 7700 3450
Wire Wire Line
	8500 3550 8500 3800
Wire Wire Line
	8500 3800 8600 3800
Connection ~ 7800 3550
Wire Wire Line
	8400 3650 8400 3950
Wire Wire Line
	8400 3950 8600 3950
Connection ~ 7900 3650
Wire Wire Line
	8350 3750 8350 4100
Wire Wire Line
	8350 4100 8600 4100
Connection ~ 8000 3750
Wire Wire Line
	8300 3850 8300 4250
Wire Wire Line
	8300 4250 8600 4250
Connection ~ 8100 3850
Wire Wire Line
	800  850  800  900 
Wire Wire Line
	800  1350 800  1200
Wire Wire Line
	6550 1000 6800 1000
Wire Wire Line
	6800 1000 6800 850 
Connection ~ 3900 850 
Wire Wire Line
	6050 1000 5700 1000
Wire Wire Line
	5700 1000 5700 2300
Wire Wire Line
	5700 2300 6650 2300
Wire Wire Line
	6650 2300 6650 2900
Wire Wire Line
	6650 2900 6450 2900
Wire Wire Line
	6550 1100 6800 1100
Wire Wire Line
	6800 1100 6950 1100
Wire Wire Line
	6800 1400 6550 1400
Wire Wire Line
	6800 1100 6800 1200
Wire Wire Line
	6800 1200 6800 1300
Wire Wire Line
	6800 1300 6800 1400
Connection ~ 6800 1100
Wire Wire Line
	6550 1300 6800 1300
Connection ~ 6800 1300
Wire Wire Line
	6550 1200 6800 1200
Connection ~ 6800 1200
Wire Wire Line
	6050 1200 5800 1200
Wire Wire Line
	5800 1200 5800 2200
Wire Wire Line
	5800 2200 6850 2200
Connection ~ 6850 4050
Wire Wire Line
	6050 1300 5900 1300
Wire Wire Line
	5900 1300 5900 2100
Wire Wire Line
	5900 2100 6950 2100
Wire Wire Line
	6950 2100 6950 3100
Wire Wire Line
	6950 3100 6450 3100
Wire Wire Line
	6050 1400 6000 1400
Wire Wire Line
	6000 1400 6000 2000
Wire Wire Line
	6000 2000 6550 2000
Wire Wire Line
	6550 2000 6550 3000
Wire Wire Line
	6550 3000 6450 3000
NoConn ~ 6450 4700
NoConn ~ 6450 4800
NoConn ~ 6450 2600
NoConn ~ 6450 2800
Wire Wire Line
	7900 4400 7650 4400
Wire Wire Line
	7650 4400 7650 3950
Connection ~ 7650 3950
Wire Wire Line
	9150 4800 9150 4500
Wire Wire Line
	9000 4000 9150 4000
Wire Wire Line
	8900 3950 9100 3950
Wire Wire Line
	9100 3950 9100 3900
Wire Wire Line
	9100 3900 9150 3900
Wire Wire Line
	8900 3800 9150 3800
Wire Wire Line
	8900 3650 9150 3650
Wire Wire Line
	9150 3650 9150 3700
Wire Wire Line
	8800 3150 9050 3150
Wire Wire Line
	9050 3150 9050 2900
Wire Wire Line
	9050 2900 9150 2900
Wire Wire Line
	8800 3000 9000 3000
Wire Wire Line
	9000 3000 9000 2850
Wire Wire Line
	9000 2850 9150 2850
Wire Wire Line
	9150 2850 9150 2800
Wire Wire Line
	8800 2850 8950 2850
Wire Wire Line
	8950 2850 8950 2800
Wire Wire Line
	8950 2800 9100 2800
Wire Wire Line
	9100 2800 9100 2700
Wire Wire Line
	9100 2700 9150 2700
Wire Wire Line
	8800 2700 9050 2700
Wire Wire Line
	9050 2700 9050 2600
Wire Wire Line
	9050 2600 9150 2600
Wire Wire Line
	8800 2550 9000 2550
Wire Wire Line
	9000 2550 9000 2500
Wire Wire Line
	9000 2500 9150 2500
Wire Wire Line
	8800 2400 9150 2400
Wire Wire Line
	8800 2250 8950 2250
Wire Wire Line
	8950 2250 8950 2300
Wire Wire Line
	8950 2300 9150 2300
Wire Wire Line
	9050 3350 9050 5350
Wire Wire Line
	9050 3350 9150 3350
Wire Wire Line
	9150 3350 9150 3100
Wire Wire Line
	9000 4100 9000 4000
Wire Wire Line
	9000 4250 9000 4150
Wire Wire Line
	9000 4150 9100 4150
Wire Wire Line
	9100 4150 9100 4100
Wire Wire Line
	9100 4100 9150 4100
Wire Wire Line
	8200 4400 9000 4400
Wire Wire Line
	9000 4400 9000 4300
Wire Wire Line
	9000 4300 9100 4300
Wire Wire Line
	9100 4300 9100 4200
Wire Wire Line
	9100 4200 9150 4200
Wire Wire Line
	8200 4550 8950 4550
Wire Wire Line
	8950 4550 8950 4450
Wire Wire Line
	8950 4450 9100 4450
Wire Wire Line
	9100 4450 9100 4350
Wire Wire Line
	9100 4350 9150 4350
Wire Wire Line
	9150 4350 9150 4300
Wire Wire Line
	9000 4250 8900 4250
Wire Wire Line
	9000 4100 8900 4100
Wire Wire Line
	4550 2050 4550 2600
Connection ~ 4200 2050
Wire Wire Line
	7100 1550 7100 1650
Wire Wire Line
	9600 4900 9600 5150
Wire Wire Line
	9600 5450 9600 5800
Wire Wire Line
	6450 4900 7150 4900
Wire Wire Line
	7150 4900 9600 4900
Wire Wire Line
	7150 4900 7150 5800
Wire Wire Line
	7150 5800 7250 5800
Connection ~ 7150 4900
Wire Wire Line
	8150 5800 8250 5800
Wire Wire Line
	8550 5800 8750 5800
Wire Wire Line
	9050 5350 9050 5600
$EndSCHEMATC
