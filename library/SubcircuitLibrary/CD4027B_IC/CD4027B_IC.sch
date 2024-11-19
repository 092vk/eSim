EESchema Schematic File Version 2
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
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
L JK_FF X1
U 1 1 6656CCEE
P 2150 4900
F 0 "X1" H 3900 5300 60  0000 C CNN
F 1 "JK_FF" H 4050 4850 60  0000 C CNN
F 2 "" H 2150 4900 60  0001 C CNN
F 3 "" H 2150 4900 60  0001 C CNN
	1    2150 4900
	1    0    0    -1  
$EndComp
$Comp
L JK_FF X2
U 1 1 6656CD96
P 4250 4850
F 0 "X2" H 6000 5250 60  0000 C CNN
F 1 "JK_FF" H 6150 4800 60  0000 C CNN
F 2 "" H 4250 4850 60  0001 C CNN
F 3 "" H 4250 4850 60  0001 C CNN
	1    4250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4100 3350 4100
Wire Wire Line
	3350 4100 3350 3500
Wire Wire Line
	3350 3500 5500 3500
Wire Wire Line
	5500 3500 5500 4050
Wire Wire Line
	4350 4100 4500 4100
Wire Wire Line
	4500 4100 4500 3300
Wire Wire Line
	4500 3300 6500 3300
Wire Wire Line
	6500 3300 6500 4050
Wire Wire Line
	6500 4050 6450 4050
Wire Wire Line
	3750 3500 3750 3200
Connection ~ 3750 3500
Wire Wire Line
	4900 3300 4900 3150
Connection ~ 4900 3300
Wire Wire Line
	3400 4300 3300 4300
Wire Wire Line
	3400 4500 3300 4500
Wire Wire Line
	3400 4700 3300 4700
Wire Wire Line
	3850 5100 3850 5200
Wire Wire Line
	4350 4700 4450 4700
Wire Wire Line
	4350 4300 4450 4300
Wire Wire Line
	5500 4250 5300 4250
Wire Wire Line
	5500 4450 5300 4450
Wire Wire Line
	5500 4650 5300 4650
Wire Wire Line
	5950 5050 5950 5250
Wire Wire Line
	6450 4650 6600 4650
Wire Wire Line
	6450 4250 6600 4250
$Comp
L PORT U1
U 1 1 6656CF6E
P 6850 4250
F 0 "U1" H 6900 4350 30  0000 C CNN
F 1 "PORT" H 6850 4250 30  0000 C CNN
F 2 "" H 6850 4250 60  0000 C CNN
F 3 "" H 6850 4250 60  0000 C CNN
	1    6850 4250
	-1   0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 6656CF95
P 6850 4650
F 0 "U1" H 6900 4750 30  0000 C CNN
F 1 "PORT" H 6850 4650 30  0000 C CNN
F 2 "" H 6850 4650 60  0000 C CNN
F 3 "" H 6850 4650 60  0000 C CNN
	2    6850 4650
	-1   0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 6656D044
P 5050 4450
F 0 "U1" H 5100 4550 30  0000 C CNN
F 1 "PORT" H 5050 4450 30  0000 C CNN
F 2 "" H 5050 4450 60  0000 C CNN
F 3 "" H 5050 4450 60  0000 C CNN
	3    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 6656D0E1
P 5700 5250
F 0 "U1" H 5750 5350 30  0000 C CNN
F 1 "PORT" H 5700 5250 30  0000 C CNN
F 2 "" H 5700 5250 60  0000 C CNN
F 3 "" H 5700 5250 60  0000 C CNN
	4    5700 5250
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 5 1 6656D186
P 5050 4650
F 0 "U1" H 5100 4750 30  0000 C CNN
F 1 "PORT" H 5050 4650 30  0000 C CNN
F 2 "" H 5050 4650 60  0000 C CNN
F 3 "" H 5050 4650 60  0000 C CNN
	5    5050 4650
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 6 1 6656D1EB
P 5050 4250
F 0 "U1" H 5100 4350 30  0000 C CNN
F 1 "PORT" H 5050 4250 30  0000 C CNN
F 2 "" H 5050 4250 60  0000 C CNN
F 3 "" H 5050 4250 60  0000 C CNN
	6    5050 4250
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 7 1 6656D262
P 5700 3700
F 0 "U1" H 5750 3800 30  0000 C CNN
F 1 "PORT" H 5700 3700 30  0000 C CNN
F 2 "" H 5700 3700 60  0000 C CNN
F 3 "" H 5700 3700 60  0000 C CNN
	7    5700 3700
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 8 1 6656D2F9
P 4650 3150
F 0 "U1" H 4700 3250 30  0000 C CNN
F 1 "PORT" H 4650 3150 30  0000 C CNN
F 2 "" H 4650 3150 60  0000 C CNN
F 3 "" H 4650 3150 60  0000 C CNN
	8    4650 3150
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 10 1 6656D37A
P 3050 4300
F 0 "U1" H 3100 4400 30  0000 C CNN
F 1 "PORT" H 3050 4300 30  0000 C CNN
F 2 "" H 3050 4300 60  0000 C CNN
F 3 "" H 3050 4300 60  0000 C CNN
	10   3050 4300
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 11 1 6656D421
P 3050 4700
F 0 "U1" H 3100 4800 30  0000 C CNN
F 1 "PORT" H 3050 4700 30  0000 C CNN
F 2 "" H 3050 4700 60  0000 C CNN
F 3 "" H 3050 4700 60  0000 C CNN
	11   3050 4700
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 12 1 6656D492
P 3600 5200
F 0 "U1" H 3650 5300 30  0000 C CNN
F 1 "PORT" H 3600 5200 30  0000 C CNN
F 2 "" H 3600 5200 60  0000 C CNN
F 3 "" H 3600 5200 60  0000 C CNN
	12   3600 5200
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 13 1 6656D513
P 3050 4500
F 0 "U1" H 3100 4600 30  0000 C CNN
F 1 "PORT" H 3050 4500 30  0000 C CNN
F 2 "" H 3050 4500 60  0000 C CNN
F 3 "" H 3050 4500 60  0000 C CNN
	13   3050 4500
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 9 1 6656D5AC
P 3600 3750
F 0 "U1" H 3650 3850 30  0000 C CNN
F 1 "PORT" H 3600 3750 30  0000 C CNN
F 2 "" H 3600 3750 60  0000 C CNN
F 3 "" H 3600 3750 60  0000 C CNN
	9    3600 3750
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 14 1 6656D631
P 4700 4700
F 0 "U1" H 4750 4800 30  0000 C CNN
F 1 "PORT" H 4700 4700 30  0000 C CNN
F 2 "" H 4700 4700 60  0000 C CNN
F 3 "" H 4700 4700 60  0000 C CNN
	14   4700 4700
	-1   0    0    -1  
$EndComp
$Comp
L PORT U1
U 15 1 6656D682
P 4700 4300
F 0 "U1" H 4750 4400 30  0000 C CNN
F 1 "PORT" H 4700 4300 30  0000 C CNN
F 2 "" H 4700 4300 60  0000 C CNN
F 3 "" H 4700 4300 60  0000 C CNN
	15   4700 4300
	-1   0    0    -1  
$EndComp
$Comp
L PORT U1
U 16 1 6656D723
P 3500 3200
F 0 "U1" H 3550 3300 30  0000 C CNN
F 1 "PORT" H 3500 3200 30  0000 C CNN
F 2 "" H 3500 3200 60  0000 C CNN
F 3 "" H 3500 3200 60  0000 C CNN
	16   3500 3200
	1    0    0    -1  
$EndComp
$EndSCHEMATC