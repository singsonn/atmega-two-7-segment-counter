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
L LM7805CT U?
U 1 1 57CEF320
P 1900 900
F 0 "U?" H 1700 1100 50  0000 C CNN
F 1 "LM7805CT" H 1900 1100 50  0000 L CNN
F 2 "TO-220" H 1900 1000 50  0000 C CIN
F 3 "" H 1900 900 50  0000 C CNN
	1    1900 900 
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA328P-P IC?
U 1 1 57CF04DF
P 5850 3700
F 0 "IC?" H 5100 4950 50  0000 L BNN
F 1 "ATMEGA328P-P" H 6250 2300 50  0000 L BNN
F 2 "DIL28" H 5850 3700 50  0000 C CIN
F 3 "" H 5850 3700 50  0000 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57CF051A
P 4700 5150
F 0 "#PWR?" H 4700 4900 50  0001 C CNN
F 1 "GND" H 4700 5000 50  0000 C CNN
F 2 "" H 4700 5150 50  0000 C CNN
F 3 "" H 4700 5150 50  0000 C CNN
	1    4700 5150
	1    0    0    -1  
$EndComp
$Comp
L 7SEGM LEFT
U 1 1 57D020AC
P 9800 2650
F 0 "LEFT" H 9800 3300 50  0000 C CNN
F 1 "7SEGM" H 9800 2000 50  0000 C CNN
F 2 "" H 9800 2650 50  0000 C CNN
F 3 "" H 9800 2650 50  0000 C CNN
	1    9800 2650
	1    0    0    -1  
$EndComp
$Comp
L 7SEGM RIGHT
U 1 1 57D0216C
P 9800 4100
F 0 "RIGHT" H 9800 4750 50  0000 C CNN
F 1 "7SEGM" H 9800 3450 50  0000 C CNN
F 2 "" H 9800 4100 50  0000 C CNN
F 3 "" H 9800 4100 50  0000 C CNN
	1    9800 4100
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57D03048
P 4600 2550
F 0 "C1" H 4625 2650 50  0000 L CNN
F 1 "0.1uF" H 4625 2450 50  0000 L CNN
F 2 "" H 4638 2400 50  0000 C CNN
F 3 "" H 4600 2550 50  0000 C CNN
	1    4600 2550
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57D03089
P 4700 3500
F 0 "C2" H 4725 3600 50  0000 L CNN
F 1 "0.1uF" H 4725 3400 50  0000 L CNN
F 2 "" H 4738 3350 50  0000 C CNN
F 3 "" H 4700 3500 50  0000 C CNN
	1    4700 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D03160
P 4600 2350
F 0 "#PWR?" H 4600 2100 50  0001 C CNN
F 1 "GND" H 4600 2200 50  0000 C CNN
F 2 "" H 4600 2350 50  0000 C CNN
F 3 "" H 4600 2350 50  0000 C CNN
	1    4600 2350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D03186
P 4700 3800
F 0 "#PWR?" H 4700 3550 50  0001 C CNN
F 1 "GND" H 4700 3650 50  0000 C CNN
F 2 "" H 4700 3800 50  0000 C CNN
F 3 "" H 4700 3800 50  0000 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D03304
P 1900 1350
F 0 "#PWR?" H 1900 1100 50  0001 C CNN
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
L R R1
U 1 1 57D0347F
P 800 5950
F 0 "R1" V 880 5950 50  0000 C CNN
F 1 "5.1k" V 800 5950 50  0000 C CNN
F 2 "" V 730 5950 50  0000 C CNN
F 3 "" H 800 5950 50  0000 C CNN
	1    800  5950
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 57D034BA
P 1150 6450
F 0 "R2" V 1230 6450 50  0000 C CNN
F 1 "2.2k" V 1150 6450 50  0000 C CNN
F 2 "" V 1080 6450 50  0000 C CNN
F 3 "" H 1150 6450 50  0000 C CNN
	1    1150 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D034F5
P 800 7250
F 0 "#PWR?" H 800 7000 50  0001 C CNN
F 1 "GND" H 800 7100 50  0000 C CNN
F 2 "" H 800 7250 50  0000 C CNN
F 3 "" H 800 7250 50  0000 C CNN
	1    800  7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 57D03554
P 1400 6800
F 0 "C3" H 1425 6900 50  0000 L CNN
F 1 "3.3uF" H 1425 6700 50  0000 L CNN
F 2 "" H 1400 6800 50  0000 C CNN
F 3 "" H 1400 6800 50  0000 C CNN
	1    1400 6800
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q?
U 1 1 57D04261
P 8550 5800
F 0 "Q?" H 8750 5875 50  0000 L CNN
F 1 "PN2222A" H 8750 5800 50  0000 L CNN
F 2 "" H 8750 5725 50  0000 L CIN
F 3 "" H 8550 5800 50  0000 L CNN
	1    8550 5800
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q?
U 1 1 57D04346
P 10700 5800
F 0 "Q?" H 10900 5875 50  0000 L CNN
F 1 "PN2222A" H 10900 5800 50  0000 L CNN
F 2 "" H 10900 5725 50  0000 L CIN
F 3 "" H 10700 5800 50  0000 L CNN
	1    10700 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D0453D
P 9300 6250
F 0 "#PWR?" H 9300 6000 50  0001 C CNN
F 1 "GND" H 9300 6100 50  0000 C CNN
F 2 "" H 9300 6250 50  0000 C CNN
F 3 "" H 9300 6250 50  0000 C CNN
	1    9300 6250
	1    0    0    -1  
$EndComp
NoConn ~ 9050 2250
NoConn ~ 9050 3050
NoConn ~ 9050 3700
NoConn ~ 9050 4500
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
L R R?
U 1 1 57D0530C
P 2700 5950
F 0 "R?" V 2780 5950 50  0000 C CNN
F 1 "5.1k" V 2700 5950 50  0000 C CNN
F 2 "" V 2630 5950 50  0000 C CNN
F 3 "" H 2700 5950 50  0000 C CNN
	1    2700 5950
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57D05312
P 3050 6450
F 0 "R?" V 3130 6450 50  0000 C CNN
F 1 "2.2k" V 3050 6450 50  0000 C CNN
F 2 "" V 2980 6450 50  0000 C CNN
F 3 "" H 3050 6450 50  0000 C CNN
	1    3050 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D05318
P 2700 7250
F 0 "#PWR?" H 2700 7000 50  0001 C CNN
F 1 "GND" H 2700 7100 50  0000 C CNN
F 2 "" H 2700 7250 50  0000 C CNN
F 3 "" H 2700 7250 50  0000 C CNN
	1    2700 7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 57D0531E
P 3300 6800
F 0 "C?" H 3325 6900 50  0000 L CNN
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
L R R?
U 1 1 57D05528
P 4750 5950
F 0 "R?" V 4830 5950 50  0000 C CNN
F 1 "5.1k" V 4750 5950 50  0000 C CNN
F 2 "" V 4680 5950 50  0000 C CNN
F 3 "" H 4750 5950 50  0000 C CNN
	1    4750 5950
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57D0552E
P 5100 6450
F 0 "R?" V 5180 6450 50  0000 C CNN
F 1 "2.2k" V 5100 6450 50  0000 C CNN
F 2 "" V 5030 6450 50  0000 C CNN
F 3 "" H 5100 6450 50  0000 C CNN
	1    5100 6450
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D05534
P 4750 7250
F 0 "#PWR?" H 4750 7000 50  0001 C CNN
F 1 "GND" H 4750 7100 50  0000 C CNN
F 2 "" H 4750 7250 50  0000 C CNN
F 3 "" H 4750 7250 50  0000 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 57D0553A
P 5350 6800
F 0 "C?" H 5375 6900 50  0000 L CNN
F 1 "3.3uF" H 5375 6700 50  0000 L CNN
F 2 "" H 5350 6800 50  0000 C CNN
F 3 "" H 5350 6800 50  0000 C CNN
	1    5350 6800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW_DECREMENT?
U 1 1 57D05B44
P 800 3700
F 0 "SW_DECREMENT?" H 950 3810 50  0000 C CNN
F 1 "SW_PUSH" H 800 3620 50  0000 C CNN
F 2 "" H 800 3700 50  0000 C CNN
F 3 "" H 800 3700 50  0000 C CNN
	1    800  3700
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 57D05B4A
P 800 4450
F 0 "R?" V 880 4450 50  0000 C CNN
F 1 "5.1k" V 800 4450 50  0000 C CNN
F 2 "" V 730 4450 50  0000 C CNN
F 3 "" H 800 4450 50  0000 C CNN
	1    800  4450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57D05B50
P 1150 4150
F 0 "R?" V 1230 4150 50  0000 C CNN
F 1 "2.2k" V 1150 4150 50  0000 C CNN
F 2 "" V 1080 4150 50  0000 C CNN
F 3 "" H 1150 4150 50  0000 C CNN
	1    1150 4150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 57D05B56
P 800 4950
F 0 "#PWR?" H 800 4700 50  0001 C CNN
F 1 "GND" H 800 4800 50  0000 C CNN
F 2 "" H 800 4950 50  0000 C CNN
F 3 "" H 800 4950 50  0000 C CNN
	1    800  4950
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 57D05B5C
P 1400 4500
F 0 "C?" H 1425 4600 50  0000 L CNN
F 1 "3.3uF" H 1425 4400 50  0000 L CNN
F 2 "" H 1400 4500 50  0000 C CNN
F 3 "" H 1400 4500 50  0000 C CNN
	1    1400 4500
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U?
U 1 1 57D05B62
P 1950 4150
F 0 "U?" H 2100 4250 50  0000 C CNN
F 1 "74HC14" H 2150 4050 50  0000 C CNN
F 2 "" H 1950 4150 50  0000 C CNN
F 3 "" H 1950 4150 50  0000 C CNN
	1    1950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4800 4700 4800
Wire Wire Line
	4700 4800 4700 5150
Wire Wire Line
	4950 4900 4700 4900
Connection ~ 4700 4900
Wire Wire Line
	6850 3450 8850 3450
Wire Wire Line
	8150 3450 8150 2350
Wire Wire Line
	8150 2350 9050 2350
Wire Wire Line
	6850 3550 8750 3550
Wire Wire Line
	8250 3550 8250 2450
Wire Wire Line
	8250 2450 9050 2450
Wire Wire Line
	6850 3650 8350 3650
Wire Wire Line
	8350 2550 9050 2550
Wire Wire Line
	6850 3750 8450 3750
Wire Wire Line
	8450 2650 8450 4100
Wire Wire Line
	8450 2650 9050 2650
Wire Wire Line
	6850 3850 8550 3850
Wire Wire Line
	8550 2750 8550 4200
Wire Wire Line
	8550 2750 9050 2750
Wire Wire Line
	6850 3950 8650 3950
Wire Wire Line
	8650 2850 8650 4300
Wire Wire Line
	8650 2850 9050 2850
Wire Wire Line
	8650 4300 9050 4300
Connection ~ 8650 3950
Wire Wire Line
	8550 4200 9050 4200
Connection ~ 8550 3850
Wire Wire Line
	8450 4100 9050 4100
Connection ~ 8450 3750
Wire Wire Line
	8350 2550 8350 4000
Wire Wire Line
	8350 4000 9050 4000
Connection ~ 8350 3650
Wire Wire Line
	8750 3550 8750 3900
Wire Wire Line
	8750 3900 9050 3900
Connection ~ 8250 3550
Wire Wire Line
	8850 3450 8850 3800
Wire Wire Line
	8850 3800 9050 3800
Connection ~ 8150 3450
Wire Wire Line
	7900 4400 9050 4400
Wire Wire Line
	6850 2700 7900 2700
Wire Wire Line
	7900 2700 7900 4400
Wire Wire Line
	9050 2950 7900 2950
Connection ~ 7900 2950
Wire Wire Line
	2300 850  4100 850 
Wire Wire Line
	4100 850  4100 5600
Wire Wire Line
	4100 3200 4950 3200
Wire Wire Line
	800  2900 4950 2900
Connection ~ 4100 2900
Wire Wire Line
	4100 2050 4950 2050
Wire Wire Line
	4700 3350 4700 3200
Connection ~ 4700 3200
Wire Wire Line
	4600 1950 4600 2050
Connection ~ 4600 2050
Wire Wire Line
	4700 3650 4700 3800
Wire Wire Line
	1900 1350 1900 1150
Wire Wire Line
	800  6100 800  6500
Wire Wire Line
	800  6450 1000 6450
Connection ~ 800  6450
Wire Wire Line
	800  7100 800  7250
Wire Wire Line
	1300 6450 1500 6450
Wire Wire Line
	1400 6650 1400 6450
Connection ~ 1400 6450
Connection ~ 4100 3200
Wire Wire Line
	1400 6950 1400 7150
Wire Wire Line
	1400 7150 800  7150
Connection ~ 800  7150
Wire Wire Line
	7100 4050 6850 4050
Wire Wire Line
	7100 5500 7100 4050
Wire Wire Line
	8650 6000 8650 6150
Wire Wire Line
	8650 6150 10800 6150
Wire Wire Line
	9300 6150 9300 6250
Connection ~ 9300 6150
Wire Wire Line
	9050 4600 9050 5300
Wire Wire Line
	9050 5300 10800 5300
Wire Wire Line
	9050 3150 8950 3150
Wire Wire Line
	8950 3150 8950 5300
Wire Wire Line
	8950 5300 8650 5300
Wire Wire Line
	8650 5300 8650 5600
Wire Wire Line
	4950 2050 4950 2600
Connection ~ 4100 2050
Wire Wire Line
	2700 6100 2700 6500
Wire Wire Line
	2700 6450 2900 6450
Connection ~ 2700 6450
Wire Wire Line
	2700 7100 2700 7250
Wire Wire Line
	3200 6450 3400 6450
Wire Wire Line
	3300 6650 3300 6450
Connection ~ 3300 6450
Wire Wire Line
	3300 6950 3300 7150
Wire Wire Line
	3300 7150 2700 7150
Connection ~ 2700 7150
Wire Wire Line
	4750 6100 4750 6500
Wire Wire Line
	4750 6450 4950 6450
Connection ~ 4750 6450
Wire Wire Line
	4750 7100 4750 7250
Wire Wire Line
	5250 6450 5450 6450
Wire Wire Line
	5350 6650 5350 6450
Connection ~ 5350 6450
Wire Wire Line
	5350 6950 5350 7150
Wire Wire Line
	5350 7150 4750 7150
Connection ~ 4750 7150
Wire Wire Line
	800  5600 4750 5600
Wire Wire Line
	2700 5600 2700 5800
Wire Wire Line
	900  3800 800  3800
Wire Wire Line
	800  3800 800  4300
Wire Wire Line
	1000 4150 800  4150
Connection ~ 800  4150
Wire Wire Line
	800  4600 800  4950
Wire Wire Line
	1300 4150 1500 4150
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
Connection ~ 4100 5600
Wire Wire Line
	2700 4150 2700 5500
Wire Wire Line
	2700 5500 7100 5500
Wire Wire Line
	4300 6450 4350 6450
Wire Wire Line
	4350 6450 4350 5700
Wire Wire Line
	4350 5700 7200 5700
Wire Wire Line
	7200 5700 7200 4400
Wire Wire Line
	7200 4400 6850 4400
Wire Wire Line
	6350 6450 6650 6450
Wire Wire Line
	6650 6450 6650 5850
Wire Wire Line
	6650 5850 7350 5850
Wire Wire Line
	7350 5850 7350 4500
Wire Wire Line
	7350 4500 6850 4500
Wire Wire Line
	2400 6450 2500 6450
Wire Wire Line
	2500 6450 2500 5400
Wire Wire Line
	2500 5400 7000 5400
Wire Wire Line
	7000 5400 7000 4600
Wire Wire Line
	7000 4600 6850 4600
$Comp
L 74HC14 U?
U 5 1 57D07C11
P 3850 6450
F 0 "U?" H 4000 6550 50  0000 C CNN
F 1 "74HC14" H 4050 6350 50  0000 C CNN
F 2 "" H 3850 6450 50  0000 C CNN
F 3 "" H 3850 6450 50  0000 C CNN
	5    3850 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U?
U 6 1 57D081BD
P 5900 6450
F 0 "U?" H 6050 6550 50  0000 C CNN
F 1 "74HC14" H 6100 6350 50  0000 C CNN
F 2 "" H 5900 6450 50  0000 C CNN
F 3 "" H 5900 6450 50  0000 C CNN
	6    5900 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U?
U 2 1 57D083B0
P 1950 6450
F 0 "U?" H 2100 6550 50  0000 C CNN
F 1 "74HC14" H 2150 6350 50  0000 C CNN
F 2 "" H 1950 6450 50  0000 C CNN
F 3 "" H 1950 6450 50  0000 C CNN
	2    1950 6450
	1    0    0    -1  
$EndComp
$Comp
L 74HC14 U?
U 3 1 57D087BB
P 9900 5800
F 0 "U?" H 10050 5900 50  0000 C CNN
F 1 "74HC14" H 10100 5700 50  0000 C CNN
F 2 "" H 9900 5800 50  0000 C CNN
F 3 "" H 9900 5800 50  0000 C CNN
	3    9900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 5800 10500 5800
Wire Wire Line
	10800 5300 10800 5600
Wire Wire Line
	10800 6150 10800 6000
Wire Wire Line
	6850 4900 7750 4900
Wire Wire Line
	7750 4900 7750 5800
Wire Wire Line
	7750 5800 8350 5800
Wire Wire Line
	7750 5500 9250 5500
Wire Wire Line
	9250 5500 9250 5800
Wire Wire Line
	9250 5800 9450 5800
Connection ~ 7750 5500
$Comp
L LED D?
U 1 1 57D0914B
P 3550 1200
F 0 "D?" H 3550 1300 50  0000 C CNN
F 1 "LED" H 3550 1100 50  0000 C CNN
F 2 "" H 3550 1200 50  0000 C CNN
F 3 "" H 3550 1200 50  0000 C CNN
	1    3550 1200
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 57D09216
P 3550 1650
F 0 "R4" V 3630 1650 50  0000 C CNN
F 1 "220" V 3550 1650 50  0000 C CNN
F 2 "" V 3480 1650 50  0000 C CNN
F 3 "" H 3550 1650 50  0000 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D09293
P 3550 1900
F 0 "#PWR?" H 3550 1650 50  0001 C CNN
F 1 "GND" H 3550 1750 50  0000 C CNN
F 2 "" H 3550 1900 50  0000 C CNN
F 3 "" H 3550 1900 50  0000 C CNN
	1    3550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1000 3550 850 
Connection ~ 3550 850 
Wire Wire Line
	3550 1400 3550 1500
Wire Wire Line
	3550 1800 3550 1900
Wire Wire Line
	4600 2700 4600 2900
Connection ~ 4600 2900
Wire Wire Line
	4600 2350 4600 2400
$Comp
L C C?
U 1 1 57D09F61
P 4600 1800
F 0 "C?" H 4625 1900 50  0000 L CNN
F 1 "0.1uF" H 4625 1700 50  0000 L CNN
F 2 "" H 4638 1650 50  0000 C CNN
F 3 "" H 4600 1800 50  0000 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D09F67
P 4600 1600
F 0 "#PWR?" H 4600 1350 50  0001 C CNN
F 1 "GND" H 4600 1450 50  0000 C CNN
F 2 "" H 4600 1600 50  0000 C CNN
F 3 "" H 4600 1600 50  0000 C CNN
	1    4600 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1600 4600 1650
$Comp
L Battery BT?
U 1 1 57D0A107
P 850 1000
F 0 "BT?" H 950 1050 50  0000 L CNN
F 1 "Battery" H 950 950 50  0000 L CNN
F 2 "" V 850 1040 50  0000 C CNN
F 3 "" V 850 1040 50  0000 C CNN
	1    850  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  850  1500 850 
Wire Wire Line
	850  1150 850  1350
Wire Wire Line
	850  1350 2850 1350
$Comp
L C C?
U 1 1 57D0A79D
P 2450 1100
F 0 "C?" H 2475 1200 50  0000 L CNN
F 1 "C" H 2475 1000 50  0000 L CNN
F 2 "" H 2488 950 50  0000 C CNN
F 3 "" H 2450 1100 50  0000 C CNN
	1    2450 1100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57D0A826
P 1400 1100
F 0 "C?" H 1425 1200 50  0000 L CNN
F 1 "C" H 1425 1000 50  0000 L CNN
F 2 "" H 1438 950 50  0000 C CNN
F 3 "" H 1400 1100 50  0000 C CNN
	1    1400 1100
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 57D0A8FA
P 2850 1100
F 0 "C?" H 2875 1200 50  0000 L CNN
F 1 "CP1" H 2875 1000 50  0000 L CNN
F 2 "" H 2850 1100 50  0000 C CNN
F 3 "" H 2850 1100 50  0000 C CNN
	1    2850 1100
	1    0    0    -1  
$EndComp
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
NoConn ~ 6850 4300
NoConn ~ 6850 4200
$Comp
L Crystal Y?
U 1 1 57D0B6D0
P 7550 2250
F 0 "Y?" H 7550 2400 50  0000 C CNN
F 1 "20MHz" H 7550 2100 50  0000 C CNN
F 2 "" H 7550 2250 50  0000 C CNN
F 3 "" H 7550 2250 50  0000 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3300 6850 3300
Wire Wire Line
	7300 3200 6850 3200
Wire Wire Line
	7800 2000 7800 3300
Wire Wire Line
	7400 2250 7300 2250
Wire Wire Line
	7300 2000 7300 3200
Wire Wire Line
	7800 2250 7700 2250
$Comp
L C C?
U 1 1 57D0C106
P 7300 1850
F 0 "C?" H 7325 1950 50  0000 L CNN
F 1 "22pF" H 7325 1750 50  0000 L CNN
F 2 "" H 7338 1700 50  0000 C CNN
F 3 "" H 7300 1850 50  0000 C CNN
	1    7300 1850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 57D0C1AA
P 7800 1850
F 0 "C?" H 7825 1950 50  0000 L CNN
F 1 "22pF" H 7825 1750 50  0000 L CNN
F 2 "" H 7838 1700 50  0000 C CNN
F 3 "" H 7800 1850 50  0000 C CNN
	1    7800 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57D0C23A
P 7550 1550
F 0 "#PWR?" H 7550 1300 50  0001 C CNN
F 1 "GND" H 7550 1400 50  0000 C CNN
F 2 "" H 7550 1550 50  0000 C CNN
F 3 "" H 7550 1550 50  0000 C CNN
	1    7550 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	7300 1700 7300 1550
Wire Wire Line
	7800 1550 7800 1700
Wire Wire Line
	7300 1550 7800 1550
Connection ~ 7550 1550
Connection ~ 7300 2250
Connection ~ 7800 2250
$EndSCHEMATC
