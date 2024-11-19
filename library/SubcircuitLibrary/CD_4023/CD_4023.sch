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
LIBS:CD_4023-cache
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
L eSim_MOS_P M1
U 1 1 628F45D1
P 3150 4000
F 0 "M1" H 3100 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 3200 4150 50  0000 R CNN
F 2 "" H 3400 4100 29  0000 C CNN
F 3 "" H 3200 4000 60  0000 C CNN
	1    3150 4000
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M3
U 1 1 628F45D2
P 3600 4850
F 0 "M3" H 3600 4700 50  0000 R CNN
F 1 "eSim_MOS_N" H 3700 4800 50  0000 R CNN
F 2 "" H 3900 4550 29  0000 C CNN
F 3 "" H 3700 4650 60  0000 C CNN
	1    3600 4850
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_P M6
U 1 1 628F45D3
P 4350 4000
F 0 "M6" H 4300 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 4400 4150 50  0000 R CNN
F 2 "" H 4600 4100 29  0000 C CNN
F 3 "" H 4400 4000 60  0000 C CNN
	1    4350 4000
	-1   0    0    1   
$EndComp
$Comp
L eSim_MOS_P M5
U 1 1 628F45D4
P 3650 4000
F 0 "M5" H 3600 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 3700 4150 50  0000 R CNN
F 2 "" H 3900 4100 29  0000 C CNN
F 3 "" H 3700 4000 60  0000 C CNN
	1    3650 4000
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M2
U 1 1 628F45D5
P 3600 4400
F 0 "M2" H 3600 4250 50  0000 R CNN
F 1 "eSim_MOS_N" H 3700 4350 50  0000 R CNN
F 2 "" H 3900 4100 29  0000 C CNN
F 3 "" H 3700 4200 60  0000 C CNN
	1    3600 4400
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_N M4
U 1 1 628F45D6
P 3600 5300
F 0 "M4" H 3600 5150 50  0000 R CNN
F 1 "eSim_MOS_N" H 3700 5250 50  0000 R CNN
F 2 "" H 3900 5000 29  0000 C CNN
F 3 "" H 3700 5100 60  0000 C CNN
	1    3600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4200 3300 4250
Wire Wire Line
	3300 4250 4200 4250
Wire Wire Line
	3800 4200 3800 4400
Wire Wire Line
	4200 4250 4200 4200
Connection ~ 3800 4250
Wire Wire Line
	3800 4800 3800 4850
Wire Wire Line
	3800 5250 3800 5300
Wire Wire Line
	3900 4750 3900 4800
Wire Wire Line
	3900 4800 3800 4800
Wire Wire Line
	3900 5200 3900 5250
Wire Wire Line
	3900 5250 3800 5250
Wire Wire Line
	3900 5650 3900 5700
Wire Wire Line
	3800 5700 6050 5700
Wire Wire Line
	3300 3800 6350 3800
Wire Wire Line
	3400 3800 3400 3850
Wire Wire Line
	3900 3800 3900 3850
Wire Wire Line
	4100 3800 4100 3850
Wire Wire Line
	3800 4350 4550 4350
Connection ~ 3800 4350
Wire Wire Line
	3000 4000 3000 4600
Wire Wire Line
	2850 4600 3500 4600
Wire Wire Line
	3500 4000 3500 5050
Wire Wire Line
	4500 4000 4500 4300
Wire Wire Line
	4500 4300 3450 4300
Wire Wire Line
	3450 4300 3450 5500
Wire Wire Line
	3450 5500 3500 5500
Connection ~ 3000 4600
Wire Wire Line
	3450 5000 2850 5000
Connection ~ 3450 5000
Wire Wire Line
	3500 4800 2850 4800
Connection ~ 3500 4800
Connection ~ 3800 3800
Connection ~ 3400 3800
Connection ~ 4100 3800
Connection ~ 3900 3800
$Comp
L eSim_MOS_P M8
U 1 1 628F45D7
P 5300 4000
F 0 "M8" H 5250 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 5350 4150 50  0000 R CNN
F 2 "" H 5550 4100 29  0000 C CNN
F 3 "" H 5350 4000 60  0000 C CNN
	1    5300 4000
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M13
U 1 1 628F45D8
P 5750 4850
F 0 "M13" H 5750 4700 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 4800 50  0000 R CNN
F 2 "" H 6050 4550 29  0000 C CNN
F 3 "" H 5850 4650 60  0000 C CNN
	1    5750 4850
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_P M18
U 1 1 628F45D9
P 6500 4000
F 0 "M18" H 6450 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 6550 4150 50  0000 R CNN
F 2 "" H 6750 4100 29  0000 C CNN
F 3 "" H 6550 4000 60  0000 C CNN
	1    6500 4000
	-1   0    0    1   
$EndComp
$Comp
L eSim_MOS_P M16
U 1 1 628F45DA
P 5800 4000
F 0 "M16" H 5750 4050 50  0000 R CNN
F 1 "eSim_MOS_P" H 5850 4150 50  0000 R CNN
F 2 "" H 6050 4100 29  0000 C CNN
F 3 "" H 5850 4000 60  0000 C CNN
	1    5800 4000
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M12
U 1 1 628F45DB
P 5750 4400
F 0 "M12" H 5750 4250 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 4350 50  0000 R CNN
F 2 "" H 6050 4100 29  0000 C CNN
F 3 "" H 5850 4200 60  0000 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_N M14
U 1 1 628F45DC
P 5750 5300
F 0 "M14" H 5750 5150 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 5250 50  0000 R CNN
F 2 "" H 6050 5000 29  0000 C CNN
F 3 "" H 5850 5100 60  0000 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4200 5450 4250
Wire Wire Line
	5450 4250 6350 4250
Wire Wire Line
	5950 4200 5950 4400
Wire Wire Line
	6350 4250 6350 4200
Connection ~ 5950 4250
Wire Wire Line
	5950 4800 5950 4850
Wire Wire Line
	5950 5250 5950 5300
Wire Wire Line
	6050 4750 6050 4800
Wire Wire Line
	6050 4800 5950 4800
Wire Wire Line
	6050 5200 6050 5250
Wire Wire Line
	6050 5250 5950 5250
Wire Wire Line
	6050 5700 6050 5650
Wire Wire Line
	5550 3800 5550 3850
Wire Wire Line
	6050 3800 6050 3850
Wire Wire Line
	6250 3800 6250 3850
Wire Wire Line
	5950 4350 6700 4350
Connection ~ 5950 4350
Wire Wire Line
	5150 4000 5150 4600
Wire Wire Line
	5000 4600 5650 4600
Wire Wire Line
	5650 4000 5650 5050
Wire Wire Line
	6650 4000 6650 4300
Wire Wire Line
	6650 4300 5600 4300
Wire Wire Line
	5600 4300 5600 5500
Wire Wire Line
	5600 5500 5650 5500
Connection ~ 5150 4600
Wire Wire Line
	5600 5000 5000 5000
Connection ~ 5600 5000
Wire Wire Line
	5650 4800 5000 4800
Connection ~ 5650 4800
Connection ~ 5950 3800
Connection ~ 5550 3800
Connection ~ 6250 3800
Connection ~ 6050 3800
$Comp
L eSim_MOS_P M7
U 1 1 628F45E3
P 5300 1850
F 0 "M7" H 5250 1900 50  0000 R CNN
F 1 "eSim_MOS_P" H 5350 2000 50  0000 R CNN
F 2 "" H 5550 1950 29  0000 C CNN
F 3 "" H 5350 1850 60  0000 C CNN
	1    5300 1850
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M10
U 1 1 628F45E4
P 5750 2700
F 0 "M10" H 5750 2550 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 2650 50  0000 R CNN
F 2 "" H 6050 2400 29  0000 C CNN
F 3 "" H 5850 2500 60  0000 C CNN
	1    5750 2700
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_P M17
U 1 1 628F45E5
P 6500 1850
F 0 "M17" H 6450 1900 50  0000 R CNN
F 1 "eSim_MOS_P" H 6550 2000 50  0000 R CNN
F 2 "" H 6750 1950 29  0000 C CNN
F 3 "" H 6550 1850 60  0000 C CNN
	1    6500 1850
	-1   0    0    1   
$EndComp
$Comp
L eSim_MOS_P M15
U 1 1 628F45E6
P 5800 1850
F 0 "M15" H 5750 1900 50  0000 R CNN
F 1 "eSim_MOS_P" H 5850 2000 50  0000 R CNN
F 2 "" H 6050 1950 29  0000 C CNN
F 3 "" H 5850 1850 60  0000 C CNN
	1    5800 1850
	1    0    0    1   
$EndComp
$Comp
L eSim_MOS_N M9
U 1 1 628F45E7
P 5750 2250
F 0 "M9" H 5750 2100 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 2200 50  0000 R CNN
F 2 "" H 6050 1950 29  0000 C CNN
F 3 "" H 5850 2050 60  0000 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L eSim_MOS_N M11
U 1 1 628F45E8
P 5750 3150
F 0 "M11" H 5750 3000 50  0000 R CNN
F 1 "eSim_MOS_N" H 5850 3100 50  0000 R CNN
F 2 "" H 6050 2850 29  0000 C CNN
F 3 "" H 5850 2950 60  0000 C CNN
	1    5750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2050 5450 2100
Wire Wire Line
	5450 2100 6350 2100
Wire Wire Line
	5950 2050 5950 2250
Wire Wire Line
	6350 2100 6350 2050
Connection ~ 5950 2100
Wire Wire Line
	5950 2650 5950 2700
Wire Wire Line
	5950 3100 5950 3150
Wire Wire Line
	6050 2600 6050 2650
Wire Wire Line
	6050 2650 5950 2650
Wire Wire Line
	6050 3050 6050 3100
Wire Wire Line
	6050 3100 5950 3100
Wire Wire Line
	6050 3550 6050 3500
Wire Wire Line
	5550 1650 5550 1700
Wire Wire Line
	6050 1650 6050 1700
Wire Wire Line
	6250 1650 6250 1700
Wire Wire Line
	5950 2200 6700 2200
Connection ~ 5950 2200
Wire Wire Line
	5150 1850 5150 2450
Wire Wire Line
	5000 2450 5650 2450
Wire Wire Line
	5650 1850 5650 2900
Wire Wire Line
	6650 1850 6650 2150
Wire Wire Line
	6650 2150 5600 2150
Wire Wire Line
	5600 2150 5600 3350
Wire Wire Line
	5600 3350 5650 3350
Connection ~ 5150 2450
Wire Wire Line
	5600 2850 5000 2850
Connection ~ 5600 2850
Wire Wire Line
	5650 2650 5000 2650
Connection ~ 5650 2650
Connection ~ 5950 1650
Connection ~ 5550 1650
Connection ~ 6250 1650
Connection ~ 6050 1650
Connection ~ 5950 3550
Connection ~ 5450 1650
Connection ~ 5450 3800
Connection ~ 4200 3800
Connection ~ 5950 5700
Connection ~ 3900 5700
Connection ~ 4650 5700
Wire Wire Line
	4850 1450 4850 3800
Connection ~ 4850 3800
Wire Wire Line
	5000 5700 5000 5950
Wire Wire Line
	5000 5950 4450 5950
Connection ~ 5000 5700
$Comp
L PORT U1
U 1 1 628F6990
P 2600 4600
F 0 "U1" H 2650 4700 30  0000 C CNN
F 1 "PORT" H 2600 4600 30  0000 C CNN
F 2 "" H 2600 4600 60  0000 C CNN
F 3 "" H 2600 4600 60  0000 C CNN
	1    2600 4600
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 2 1 628F6A4B
P 2600 4800
F 0 "U1" H 2650 4900 30  0000 C CNN
F 1 "PORT" H 2600 4800 30  0000 C CNN
F 2 "" H 2600 4800 60  0000 C CNN
F 3 "" H 2600 4800 60  0000 C CNN
	2    2600 4800
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 628F6AB4
P 4750 4600
F 0 "U1" H 4800 4700 30  0000 C CNN
F 1 "PORT" H 4750 4600 30  0000 C CNN
F 2 "" H 4750 4600 60  0000 C CNN
F 3 "" H 4750 4600 60  0000 C CNN
	3    4750 4600
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 4 1 628F6B19
P 4750 4800
F 0 "U1" H 4800 4900 30  0000 C CNN
F 1 "PORT" H 4750 4800 30  0000 C CNN
F 2 "" H 4750 4800 60  0000 C CNN
F 3 "" H 4750 4800 60  0000 C CNN
	4    4750 4800
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 5 1 628F6B78
P 4750 5000
F 0 "U1" H 4800 5100 30  0000 C CNN
F 1 "PORT" H 4750 5000 30  0000 C CNN
F 2 "" H 4750 5000 60  0000 C CNN
F 3 "" H 4750 5000 60  0000 C CNN
	5    4750 5000
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 6 1 628F6C2E
P 6950 4350
F 0 "U1" H 7000 4450 30  0000 C CNN
F 1 "PORT" H 6950 4350 30  0000 C CNN
F 2 "" H 6950 4350 60  0000 C CNN
F 3 "" H 6950 4350 60  0000 C CNN
	6    6950 4350
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 7 1 628F6CC7
P 4200 5950
F 0 "U1" H 4250 6050 30  0000 C CNN
F 1 "PORT" H 4200 5950 30  0000 C CNN
F 2 "" H 4200 5950 60  0000 C CNN
F 3 "" H 4200 5950 60  0000 C CNN
	7    4200 5950
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 8 1 628F6D56
P 2600 5000
F 0 "U1" H 2650 5100 30  0000 C CNN
F 1 "PORT" H 2600 5000 30  0000 C CNN
F 2 "" H 2600 5000 60  0000 C CNN
F 3 "" H 2600 5000 60  0000 C CNN
	8    2600 5000
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 9 1 628F6E60
P 4800 4350
F 0 "U1" H 4850 4450 30  0000 C CNN
F 1 "PORT" H 4800 4350 30  0000 C CNN
F 2 "" H 4800 4350 60  0000 C CNN
F 3 "" H 4800 4350 60  0000 C CNN
	9    4800 4350
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 10 1 628F6F5C
P 6950 2200
F 0 "U1" H 7000 2300 30  0000 C CNN
F 1 "PORT" H 6950 2200 30  0000 C CNN
F 2 "" H 6950 2200 60  0000 C CNN
F 3 "" H 6950 2200 60  0000 C CNN
	10   6950 2200
	-1   0    0    1   
$EndComp
$Comp
L PORT U1
U 11 1 628F71A3
P 4750 2450
F 0 "U1" H 4800 2550 30  0000 C CNN
F 1 "PORT" H 4750 2450 30  0000 C CNN
F 2 "" H 4750 2450 60  0000 C CNN
F 3 "" H 4750 2450 60  0000 C CNN
	11   4750 2450
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 12 1 628F7210
P 4750 2650
F 0 "U1" H 4800 2750 30  0000 C CNN
F 1 "PORT" H 4750 2650 30  0000 C CNN
F 2 "" H 4750 2650 60  0000 C CNN
F 3 "" H 4750 2650 60  0000 C CNN
	12   4750 2650
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 13 1 628F7283
P 4750 2850
F 0 "U1" H 4800 2950 30  0000 C CNN
F 1 "PORT" H 4750 2850 30  0000 C CNN
F 2 "" H 4750 2850 60  0000 C CNN
F 3 "" H 4750 2850 60  0000 C CNN
	13   4750 2850
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 14 1 628F7300
P 4550 1450
F 0 "U1" H 4600 1550 30  0000 C CNN
F 1 "PORT" H 4550 1450 30  0000 C CNN
F 2 "" H 4550 1450 60  0000 C CNN
F 3 "" H 4550 1450 60  0000 C CNN
	14   4550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1650 6350 1650
Wire Wire Line
	4650 3550 6050 3550
Wire Wire Line
	4650 3550 4650 5700
Wire Wire Line
	4800 1450 4850 1450
Connection ~ 4850 1650
$EndSCHEMATC