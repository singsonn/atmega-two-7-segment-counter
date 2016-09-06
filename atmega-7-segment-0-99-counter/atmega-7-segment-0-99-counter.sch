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
P 2650 2500
F 0 "U?" H 2450 2700 50  0000 C CNN
F 1 "LM7805CT" H 2650 2700 50  0000 L CNN
F 2 "TO-220" H 2650 2600 50  0000 C CIN
F 3 "" H 2650 2500 50  0000 C CNN
	1    2650 2500
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
Wire Wire Line
	4950 4800 4700 4800
Wire Wire Line
	4700 4800 4700 5150
Wire Wire Line
	4950 4900 4700 4900
Connection ~ 4700 4900
$EndSCHEMATC
