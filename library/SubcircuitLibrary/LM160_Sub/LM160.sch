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
LIBS:LM160-cache
EELAYER 25 0
EELAYER END
$Descr User 17000 11827
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
L resistor R4
U 1 1 668585EA
P 4200 1250
F 0 "R4" H 4250 1380 50  0000 C CNN
F 1 "1k" H 4250 1200 50  0000 C CNN
F 2 "" H 4250 1230 30  0000 C CNN
F 3 "" V 4250 1300 30  0000 C CNN
	1    4200 1250
	0    1    1    0   
$EndComp
$Comp
L resistor R8
U 1 1 668585EB
P 7050 1400
F 0 "R8" H 7100 1530 50  0000 C CNN
F 1 "4k" H 7100 1350 50  0000 C CNN
F 2 "" H 7100 1380 30  0000 C CNN
F 3 "" V 7100 1450 30  0000 C CNN
	1    7050 1400
	0    1    1    0   
$EndComp
$Comp
L resistor R9
U 1 1 668585EC
P 7650 1400
F 0 "R9" H 7700 1530 50  0000 C CNN
F 1 "1.4k" H 7700 1350 50  0000 C CNN
F 2 "" H 7700 1380 30  0000 C CNN
F 3 "" V 7700 1450 30  0000 C CNN
	1    7650 1400
	0    1    1    0   
$EndComp
$Comp
L resistor R13
U 1 1 668585ED
P 8250 1400
F 0 "R13" H 8300 1530 50  0000 C CNN
F 1 "85" H 8300 1350 50  0000 C CNN
F 2 "" H 8300 1380 30  0000 C CNN
F 3 "" V 8300 1450 30  0000 C CNN
	1    8250 1400
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q13
U 1 1 668585EE
P 6800 2150
F 0 "Q13" H 6700 2200 50  0000 R CNN
F 1 "eSim_NPN" H 6750 2300 50  0000 R CNN
F 2 "" H 7000 2250 29  0000 C CNN
F 3 "" H 6800 2150 60  0000 C CNN
	1    6800 2150
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q17
U 1 1 668585EF
P 8050 2950
F 0 "Q17" H 7950 3000 50  0000 R CNN
F 1 "eSim_NPN" H 8000 3100 50  0000 R CNN
F 2 "" H 8250 3050 29  0000 C CNN
F 3 "" H 8050 2950 60  0000 C CNN
	1    8050 2950
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q14
U 1 1 668585F0
P 7400 2150
F 0 "Q14" H 7300 2200 50  0000 R CNN
F 1 "eSim_NPN" H 7350 2300 50  0000 R CNN
F 2 "" H 7600 2250 29  0000 C CNN
F 3 "" H 7400 2150 60  0000 C CNN
	1    7400 2150
	0    -1   1    0   
$EndComp
$Comp
L eSim_NPN Q15
U 1 1 668585F1
P 7400 2950
F 0 "Q15" H 7300 3000 50  0000 R CNN
F 1 "eSim_NPN" H 7350 3100 50  0000 R CNN
F 2 "" H 7600 3050 29  0000 C CNN
F 3 "" H 7400 2950 60  0000 C CNN
	1    7400 2950
	1    0    0    -1  
$EndComp
$Comp
L eSim_Diode D1
U 1 1 668585F2
P 8500 3500
F 0 "D1" H 8500 3600 50  0000 C CNN
F 1 "eSim_Diode" H 8500 3400 50  0000 C CNN
F 2 "" H 8500 3500 60  0000 C CNN
F 3 "" H 8500 3500 60  0000 C CNN
	1    8500 3500
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q18
U 1 1 668585F3
P 8200 2250
F 0 "Q18" H 8100 2300 50  0000 R CNN
F 1 "eSim_NPN" H 8150 2400 50  0000 R CNN
F 2 "" H 8400 2350 29  0000 C CNN
F 3 "" H 8200 2250 60  0000 C CNN
	1    8200 2250
	1    0    0    -1  
$EndComp
$Comp
L resistor R10
U 1 1 668585F4
P 7650 3700
F 0 "R10" H 7700 3830 50  0000 C CNN
F 1 "205" H 7700 3650 50  0000 C CNN
F 2 "" H 7700 3680 30  0000 C CNN
F 3 "" V 7700 3750 30  0000 C CNN
	1    7650 3700
	0    1    1    0   
$EndComp
$Comp
L resistor R11
U 1 1 668585F5
P 7650 4400
F 0 "R11" H 7700 4530 50  0000 C CNN
F 1 "800" H 7700 4350 50  0000 C CNN
F 2 "" H 7700 4380 30  0000 C CNN
F 3 "" V 7700 4450 30  0000 C CNN
	1    7650 4400
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q21
U 1 1 668585F6
P 8400 4100
F 0 "Q21" H 8300 4150 50  0000 R CNN
F 1 "eSim_NPN" H 8350 4250 50  0000 R CNN
F 2 "" H 8600 4200 29  0000 C CNN
F 3 "" H 8400 4100 60  0000 C CNN
	1    8400 4100
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q4
U 1 1 668585F7
P 3450 5500
F 0 "Q4" H 3350 5550 50  0000 R CNN
F 1 "eSim_NPN" H 3700 5700 50  0000 R CNN
F 2 "" H 3650 5600 29  0000 C CNN
F 3 "" H 3450 5500 60  0000 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
$Comp
L zener U2
U 1 1 668585F8
P 3550 6400
F 0 "U2" H 3500 6300 60  0000 C CNN
F 1 "zener" H 3550 6500 60  0000 C CNN
F 2 "" H 3600 6400 60  0000 C CNN
F 3 "" H 3600 6400 60  0000 C CNN
	1    3550 6400
	0    1    -1   0   
$EndComp
$Comp
L eSim_NPN Q6
U 1 1 668585F9
P 3800 5800
F 0 "Q6" H 3700 5850 50  0000 R CNN
F 1 "eSim_NPN" H 4050 5600 50  0000 R CNN
F 2 "" H 4000 5900 29  0000 C CNN
F 3 "" H 3800 5800 60  0000 C CNN
	1    3800 5800
	1    0    0    -1  
$EndComp
$Comp
L zener U3
U 1 1 668585FA
P 3900 6400
F 0 "U3" H 3850 6300 60  0000 C CNN
F 1 "zener" H 3900 6500 60  0000 C CNN
F 2 "" H 3950 6400 60  0000 C CNN
F 3 "" H 3950 6400 60  0000 C CNN
	1    3900 6400
	0    1    -1   0   
$EndComp
$Comp
L eSim_NPN Q8
U 1 1 668585FB
P 4150 7050
F 0 "Q8" H 4050 7100 50  0000 R CNN
F 1 "eSim_NPN" H 4100 7200 50  0000 R CNN
F 2 "" H 4350 7150 29  0000 C CNN
F 3 "" H 4150 7050 60  0000 C CNN
	1    4150 7050
	1    0    0    -1  
$EndComp
$Comp
L resistor R5
U 1 1 668585FC
P 4200 6300
F 0 "R5" H 4250 6430 50  0000 C CNN
F 1 "1.3k" H 4250 6250 50  0000 C CNN
F 2 "" H 4250 6280 30  0000 C CNN
F 3 "" V 4250 6350 30  0000 C CNN
	1    4200 6300
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q9
U 1 1 668585FD
P 4650 6700
F 0 "Q9" H 4550 6750 50  0000 R CNN
F 1 "eSim_NPN" H 4600 6850 50  0000 R CNN
F 2 "" H 4850 6800 29  0000 C CNN
F 3 "" H 4650 6700 60  0000 C CNN
	1    4650 6700
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q11
U 1 1 668585FE
P 5200 6700
F 0 "Q11" H 5100 6750 50  0000 R CNN
F 1 "eSim_NPN" H 5150 6850 50  0000 R CNN
F 2 "" H 5400 6800 29  0000 C CNN
F 3 "" H 5200 6700 60  0000 C CNN
	1    5200 6700
	-1   0    0    -1  
$EndComp
$Comp
L eSim_NPN Q12
U 1 1 668585FF
P 5900 7250
F 0 "Q12" H 5800 7300 50  0000 R CNN
F 1 "eSim_NPN" H 5850 7400 50  0000 R CNN
F 2 "" H 6100 7350 29  0000 C CNN
F 3 "" H 5900 7250 60  0000 C CNN
	1    5900 7250
	-1   0    0    -1  
$EndComp
$Comp
L resistor R7
U 1 1 66858600
P 5750 6300
F 0 "R7" H 5800 6430 50  0000 C CNN
F 1 "1.3k" H 5800 6250 50  0000 C CNN
F 2 "" H 5800 6280 30  0000 C CNN
F 3 "" V 5800 6350 30  0000 C CNN
	1    5750 6300
	0    1    1    0   
$EndComp
$Comp
L eSim_GND #PWR1
U 1 1 66858601
P 4950 7250
F 0 "#PWR1" H 4950 7000 50  0001 C CNN
F 1 "eSim_GND" H 4950 7100 50  0000 C CNN
F 2 "" H 4950 7250 50  0001 C CNN
F 3 "" H 4950 7250 50  0001 C CNN
	1    4950 7250
	1    0    0    -1  
$EndComp
$Comp
L resistor R6
U 1 1 66858602
P 5750 5500
F 0 "R6" H 5800 5630 50  0000 C CNN
F 1 "1k" H 5800 5450 50  0000 C CNN
F 2 "" H 5800 5480 30  0000 C CNN
F 3 "" V 5800 5550 30  0000 C CNN
	1    5750 5500
	0    1    1    0   
$EndComp
$Comp
L resistor R3
U 1 1 66858603
P 3000 5200
F 0 "R3" H 3050 5350 50  0000 C CNN
F 1 "1450" H 3050 5150 50  0000 C CNN
F 2 "" H 3050 5180 30  0000 C CNN
F 3 "" V 3050 5250 30  0000 C CNN
	1    3000 5200
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q3
U 1 1 66858604
P 3150 6450
F 0 "Q3" H 3050 6500 50  0000 R CNN
F 1 "eSim_NPN" H 3100 6600 50  0000 R CNN
F 2 "" H 3350 6550 29  0000 C CNN
F 3 "" H 3150 6450 60  0000 C CNN
	1    3150 6450
	-1   0    0    -1  
$EndComp
$Comp
L eSim_NPN Q1
U 1 1 66858605
P 2450 6500
F 0 "Q1" H 2350 6550 50  0000 R CNN
F 1 "eSim_NPN" H 2400 6650 50  0000 R CNN
F 2 "" H 2650 6600 29  0000 C CNN
F 3 "" H 2450 6500 60  0000 C CNN
	1    2450 6500
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 66858606
P 2500 5250
F 0 "R1" H 2550 5380 50  0000 C CNN
F 1 "1450" H 2550 5200 50  0000 C CNN
F 2 "" H 2550 5230 30  0000 C CNN
F 3 "" V 2550 5300 30  0000 C CNN
	1    2500 5250
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q2
U 1 1 66858607
P 3000 8300
F 0 "Q2" H 2900 8350 50  0000 R CNN
F 1 "eSim_NPN" H 2950 8450 50  0000 R CNN
F 2 "" H 3200 8400 29  0000 C CNN
F 3 "" H 3000 8300 60  0000 C CNN
	1    3000 8300
	-1   0    0    -1  
$EndComp
$Comp
L resistor R2
U 1 1 66858608
P 2850 9150
F 0 "R2" H 2900 9280 50  0000 C CNN
F 1 "400" H 2900 9100 50  0000 C CNN
F 2 "" H 2900 9130 30  0000 C CNN
F 3 "" V 2900 9200 30  0000 C CNN
	1    2850 9150
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q5
U 1 1 66858609
P 3650 9950
F 0 "Q5" H 3550 10000 50  0000 R CNN
F 1 "eSim_NPN" H 3600 10100 50  0000 R CNN
F 2 "" H 3850 10050 29  0000 C CNN
F 3 "" H 3650 9950 60  0000 C CNN
	1    3650 9950
	-1   0    0    -1  
$EndComp
$Comp
L eSim_NPN Q7
U 1 1 6685860A
P 4100 9950
F 0 "Q7" H 4000 10000 50  0000 R CNN
F 1 "eSim_NPN" H 4050 10100 50  0000 R CNN
F 2 "" H 4300 10050 29  0000 C CNN
F 3 "" H 4100 9950 60  0000 C CNN
	1    4100 9950
	-1   0    0    -1  
$EndComp
$Comp
L eSim_NPN Q10
U 1 1 6685860B
P 5000 9950
F 0 "Q10" H 4900 10000 50  0000 R CNN
F 1 "eSim_NPN" H 4950 10100 50  0000 R CNN
F 2 "" H 5200 10050 29  0000 C CNN
F 3 "" H 5000 9950 60  0000 C CNN
	1    5000 9950
	-1   0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR2
U 1 1 6685860C
P 8500 4800
F 0 "#PWR2" H 8500 4550 50  0001 C CNN
F 1 "eSim_GND" H 8500 4650 50  0000 C CNN
F 2 "" H 8500 4800 50  0001 C CNN
F 3 "" H 8500 4800 50  0001 C CNN
	1    8500 4800
	1    0    0    -1  
$EndComp
$Comp
L resistor R12
U 1 1 6685860D
P 8000 5450
F 0 "R12" H 8050 5580 50  0000 C CNN
F 1 "4k" H 8050 5400 50  0000 C CNN
F 2 "" H 8050 5430 30  0000 C CNN
F 3 "" V 8050 5500 30  0000 C CNN
	1    8000 5450
	0    1    1    0   
$EndComp
$Comp
L resistor R14
U 1 1 6685860E
P 8600 5450
F 0 "R14" H 8650 5580 50  0000 C CNN
F 1 "1.4k" H 8650 5400 50  0000 C CNN
F 2 "" H 8650 5430 30  0000 C CNN
F 3 "" V 8650 5500 30  0000 C CNN
	1    8600 5450
	0    1    1    0   
$EndComp
$Comp
L resistor R17
U 1 1 6685860F
P 9200 5450
F 0 "R17" H 9250 5580 50  0000 C CNN
F 1 "85" H 9250 5400 50  0000 C CNN
F 2 "" H 9250 5430 30  0000 C CNN
F 3 "" V 9250 5500 30  0000 C CNN
	1    9200 5450
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q16
U 1 1 66858610
P 7750 6200
F 0 "Q16" H 7650 6250 50  0000 R CNN
F 1 "eSim_NPN" H 7700 6350 50  0000 R CNN
F 2 "" H 7950 6300 29  0000 C CNN
F 3 "" H 7750 6200 60  0000 C CNN
	1    7750 6200
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q22
U 1 1 66858611
P 9000 7000
F 0 "Q22" H 8900 7050 50  0000 R CNN
F 1 "eSim_NPN" H 8950 7150 50  0000 R CNN
F 2 "" H 9200 7100 29  0000 C CNN
F 3 "" H 9000 7000 60  0000 C CNN
	1    9000 7000
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q19
U 1 1 66858612
P 8350 6200
F 0 "Q19" H 8250 6250 50  0000 R CNN
F 1 "eSim_NPN" H 8300 6350 50  0000 R CNN
F 2 "" H 8550 6300 29  0000 C CNN
F 3 "" H 8350 6200 60  0000 C CNN
	1    8350 6200
	0    -1   1    0   
$EndComp
$Comp
L eSim_NPN Q20
U 1 1 66858613
P 8350 7000
F 0 "Q20" H 8250 7050 50  0000 R CNN
F 1 "eSim_NPN" H 8300 7150 50  0000 R CNN
F 2 "" H 8550 7100 29  0000 C CNN
F 3 "" H 8350 7000 60  0000 C CNN
	1    8350 7000
	1    0    0    -1  
$EndComp
$Comp
L eSim_Diode D2
U 1 1 66858614
P 9450 7550
F 0 "D2" H 9450 7650 50  0000 C CNN
F 1 "eSim_Diode" H 9450 7450 50  0000 C CNN
F 2 "" H 9450 7550 60  0000 C CNN
F 3 "" H 9450 7550 60  0000 C CNN
	1    9450 7550
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q23
U 1 1 66858615
P 9150 6300
F 0 "Q23" H 9050 6350 50  0000 R CNN
F 1 "eSim_NPN" H 9100 6450 50  0000 R CNN
F 2 "" H 9350 6400 29  0000 C CNN
F 3 "" H 9150 6300 60  0000 C CNN
	1    9150 6300
	1    0    0    -1  
$EndComp
$Comp
L resistor R15
U 1 1 66858616
P 8600 7750
F 0 "R15" H 8650 7880 50  0000 C CNN
F 1 "205" H 8650 7700 50  0000 C CNN
F 2 "" H 8650 7730 30  0000 C CNN
F 3 "" V 8650 7800 30  0000 C CNN
	1    8600 7750
	0    1    1    0   
$EndComp
$Comp
L resistor R16
U 1 1 66858617
P 8600 8450
F 0 "R16" H 8650 8580 50  0000 C CNN
F 1 "800" H 8650 8400 50  0000 C CNN
F 2 "" H 8650 8430 30  0000 C CNN
F 3 "" V 8650 8500 30  0000 C CNN
	1    8600 8450
	0    1    1    0   
$EndComp
$Comp
L eSim_NPN Q24
U 1 1 66858618
P 9350 8150
F 0 "Q24" H 9250 8200 50  0000 R CNN
F 1 "eSim_NPN" H 9300 8300 50  0000 R CNN
F 2 "" H 9550 8250 29  0000 C CNN
F 3 "" H 9350 8150 60  0000 C CNN
	1    9350 8150
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR3
U 1 1 66858619
P 9450 9150
F 0 "#PWR3" H 9450 8900 50  0001 C CNN
F 1 "eSim_GND" H 9450 9000 50  0000 C CNN
F 2 "" H 9450 9150 50  0001 C CNN
F 3 "" H 9450 9150 50  0001 C CNN
	1    9450 9150
	1    0    0    -1  
$EndComp
$Comp
L eSim_NPN Q25
U 1 1 6685861A
P 10350 8100
F 0 "Q25" H 10250 8150 50  0000 R CNN
F 1 "eSim_NPN" H 10300 8250 50  0000 R CNN
F 2 "" H 10550 8200 29  0000 C CNN
F 3 "" H 10350 8100 60  0000 C CNN
	1    10350 8100
	-1   0    0    -1  
$EndComp
$Comp
L resistor R18
U 1 1 6685861B
P 10200 8600
F 0 "R18" H 10250 8730 50  0000 C CNN
F 1 "3.2k" H 10250 8550 50  0000 C CNN
F 2 "" H 10250 8580 30  0000 C CNN
F 3 "" V 10250 8650 30  0000 C CNN
	1    10200 8600
	0    1    1    0   
$EndComp
$Comp
L resistor R19
U 1 1 6685861C
P 10200 9450
F 0 "R19" H 10250 9580 50  0000 C CNN
F 1 "387" H 10250 9400 50  0000 C CNN
F 2 "" H 10250 9430 30  0000 C CNN
F 3 "" V 10250 9500 30  0000 C CNN
	1    10200 9450
	0    1    1    0   
$EndComp
$Comp
L resistor R20
U 1 1 6685861D
P 11150 5950
F 0 "R20" H 11200 6080 50  0000 C CNN
F 1 "5k" H 11200 5900 50  0000 C CNN
F 2 "" H 11200 5930 30  0000 C CNN
F 3 "" V 11200 6000 30  0000 C CNN
	1    11150 5950
	0    1    1    0   
$EndComp
$Comp
L zener U4
U 1 1 6685861E
P 11250 9450
F 0 "U4" H 11200 9350 60  0000 C CNN
F 1 "zener" H 11250 9550 60  0000 C CNN
F 2 "" H 11300 9450 60  0000 C CNN
F 3 "" H 11300 9450 60  0000 C CNN
	1    11250 9450
	0    1    -1   0   
$EndComp
$Comp
L eSim_NPN Q26
U 1 1 6685861F
P 10350 10050
F 0 "Q26" H 10250 10100 50  0000 R CNN
F 1 "eSim_NPN" H 10300 10200 50  0000 R CNN
F 2 "" H 10550 10150 29  0000 C CNN
F 3 "" H 10350 10050 60  0000 C CNN
	1    10350 10050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4250 1150 4250 1050
Wire Wire Line
	3850 1050 8300 1050
Wire Wire Line
	8300 1050 8300 1300
Wire Wire Line
	7100 1300 7100 1050
Connection ~ 7100 1050
Wire Wire Line
	7700 1300 7700 1050
Connection ~ 7700 1050
Wire Wire Line
	4250 2250 6600 2250
Wire Wire Line
	7150 2250 7200 2250
Wire Wire Line
	7000 2250 7000 2650
Wire Wire Line
	7000 2650 7150 2650
Wire Wire Line
	7150 2650 7150 2250
Wire Wire Line
	6800 1950 6800 1800
Wire Wire Line
	6800 1800 7400 1800
Wire Wire Line
	7400 1800 7400 1950
Wire Wire Line
	7100 1600 7100 1800
Connection ~ 7100 1800
Wire Wire Line
	7700 1600 7700 2600
Wire Wire Line
	7100 2650 7100 2950
Connection ~ 7100 2650
Wire Wire Line
	7500 2750 7500 2600
Wire Wire Line
	7500 2600 8150 2600
Wire Wire Line
	8150 2600 8150 2750
Connection ~ 7700 2600
Wire Wire Line
	7100 2950 7850 2950
Connection ~ 7700 2250
Connection ~ 7200 2950
Wire Wire Line
	7500 3150 7700 3150
Wire Wire Line
	7700 3150 7700 3600
Wire Wire Line
	7700 3900 7700 4300
Connection ~ 7700 4100
Wire Wire Line
	8500 3650 8500 3900
Wire Wire Line
	7700 4100 8200 4100
Wire Wire Line
	7700 4600 7700 4700
Wire Wire Line
	7700 4700 9000 4700
Wire Wire Line
	8300 1600 8300 2050
Wire Wire Line
	7600 2250 8000 2250
Wire Wire Line
	8150 3150 8150 3250
Wire Wire Line
	8150 3250 8500 3250
Wire Wire Line
	8500 2800 8500 3350
Wire Wire Line
	8300 2450 8300 2800
Wire Wire Line
	8300 2800 8500 2800
Connection ~ 8500 3250
Connection ~ 8500 4700
Connection ~ 4250 2250
Wire Wire Line
	3850 1050 3850 5600
Connection ~ 4250 1050
Wire Wire Line
	3550 5700 3550 6100
Wire Wire Line
	4250 1450 4250 6200
Wire Wire Line
	3850 5600 3900 5600
Wire Wire Line
	3900 6000 3900 6100
Wire Wire Line
	4250 6500 4250 6850
Wire Wire Line
	3950 7050 3900 7050
Connection ~ 3900 7050
Wire Wire Line
	4450 6700 4250 6700
Connection ~ 4250 6700
Wire Wire Line
	4750 6500 4750 6050
Wire Wire Line
	4750 6050 4250 6050
Connection ~ 4250 6050
Wire Wire Line
	4250 7250 4250 7500
Wire Wire Line
	4250 7500 5800 7500
Wire Wire Line
	4750 6900 4750 7050
Wire Wire Line
	4750 7050 5100 7050
Wire Wire Line
	5100 7050 5100 6900
Wire Wire Line
	5100 6500 5100 6050
Wire Wire Line
	5100 6050 7450 6050
Wire Wire Line
	4950 7050 4950 7250
Connection ~ 4950 7050
Wire Wire Line
	5800 7500 5800 7450
Wire Wire Line
	5800 6500 5800 7050
Wire Wire Line
	5400 6700 5800 6700
Connection ~ 5800 6700
Wire Wire Line
	5800 5700 5800 6200
Connection ~ 5800 6050
Wire Wire Line
	3550 7800 6400 7800
Wire Wire Line
	6400 7800 6400 7250
Wire Wire Line
	6400 7250 6100 7250
Wire Wire Line
	5800 5000 5800 5400
Wire Wire Line
	3550 5300 3550 5000
Connection ~ 3550 5000
Wire Wire Line
	3050 5100 3050 5000
Connection ~ 3050 5000
Wire Wire Line
	3050 5400 3050 6250
Wire Wire Line
	3050 5500 3250 5500
Connection ~ 3050 5500
Wire Wire Line
	3350 6450 3450 6450
Wire Wire Line
	3450 6450 3450 6950
Wire Wire Line
	3450 6950 1700 6950
Wire Wire Line
	2550 6700 2550 6800
Wire Wire Line
	2550 6800 3050 6800
Wire Wire Line
	3050 6800 3050 6650
Wire Wire Line
	2550 5450 2550 6300
Wire Wire Line
	2550 5150 2550 5000
Connection ~ 2550 5000
Connection ~ 2850 6800
Wire Wire Line
	2850 6800 2850 8100
Wire Wire Line
	2850 8100 2900 8100
Wire Wire Line
	3200 8300 7300 8300
Connection ~ 3550 7800
Wire Wire Line
	2900 8500 2900 9050
Wire Wire Line
	2900 9350 2900 10500
Wire Wire Line
	2300 10500 11250 10500
Wire Wire Line
	3550 6600 3550 9750
Wire Wire Line
	3550 10150 3550 10500
Connection ~ 3550 10500
Wire Wire Line
	3900 6600 3900 9650
Wire Wire Line
	3900 9650 4000 9650
Wire Wire Line
	4000 9650 4000 9750
Wire Wire Line
	3850 9950 9800 9950
Connection ~ 4300 9950
Connection ~ 5200 9950
Wire Wire Line
	5000 7500 5000 9750
Wire Wire Line
	5000 9750 4900 9750
Connection ~ 5000 7500
Connection ~ 5800 5000
Wire Wire Line
	8500 4300 8500 4800
Wire Wire Line
	8050 5000 8050 5350
Connection ~ 8050 5000
Wire Wire Line
	9250 5000 9250 5350
Wire Wire Line
	8650 5000 8650 5350
Wire Wire Line
	8100 6300 8150 6300
Wire Wire Line
	7950 6300 7950 6700
Wire Wire Line
	7950 6700 8100 6700
Wire Wire Line
	8100 6700 8100 6300
Wire Wire Line
	7750 6000 7750 5850
Wire Wire Line
	7750 5850 8350 5850
Wire Wire Line
	8350 5850 8350 6000
Wire Wire Line
	8050 5650 8050 5850
Connection ~ 8050 5850
Wire Wire Line
	8650 5650 8650 6650
Wire Wire Line
	8050 6700 8050 7000
Connection ~ 8050 6700
Wire Wire Line
	8450 6800 8450 6650
Wire Wire Line
	8450 6650 9100 6650
Wire Wire Line
	9100 6650 9100 6800
Connection ~ 8650 6650
Wire Wire Line
	8050 7000 8800 7000
Connection ~ 8650 6300
Connection ~ 8150 7000
Wire Wire Line
	8450 7200 8650 7200
Wire Wire Line
	8650 7200 8650 7650
Wire Wire Line
	8650 7950 8650 8350
Connection ~ 8650 8150
Wire Wire Line
	9450 7700 9450 7950
Wire Wire Line
	8650 8150 9150 8150
Wire Wire Line
	8650 8650 8650 9000
Wire Wire Line
	9250 5650 9250 6100
Wire Wire Line
	8550 6300 8950 6300
Wire Wire Line
	9100 7200 9100 7300
Wire Wire Line
	9100 7300 9450 7300
Wire Wire Line
	9450 6850 9450 7400
Wire Wire Line
	9250 6500 9250 6850
Wire Wire Line
	9250 6850 9450 6850
Connection ~ 9450 7300
Wire Wire Line
	9450 8350 9450 9150
Connection ~ 8650 5000
Connection ~ 9250 5000
Wire Wire Line
	8650 9000 9450 9000
Connection ~ 9450 9000
Wire Wire Line
	10250 5000 10250 7900
Connection ~ 10250 5000
Wire Wire Line
	10250 8300 10250 8500
Wire Wire Line
	1650 5000 11200 5000
Wire Wire Line
	11200 5000 11200 5850
Wire Wire Line
	11200 6150 11250 6150
Wire Wire Line
	11250 6150 11250 9150
Wire Wire Line
	10550 8100 11250 8100
Connection ~ 11250 8100
Wire Wire Line
	9450 7800 12000 7800
Connection ~ 9450 7800
Wire Wire Line
	7300 8300 7300 8900
Wire Wire Line
	7300 8900 10250 8900
Connection ~ 10250 8900
Wire Wire Line
	10250 8800 10250 9350
Wire Wire Line
	10250 9650 10250 9850
Wire Wire Line
	10250 9750 10650 9750
Wire Wire Line
	10650 9750 10650 10050
Wire Wire Line
	10650 10050 9800 10050
Connection ~ 10250 9750
Wire Wire Line
	9800 10050 9800 9950
Connection ~ 10550 10050
Wire Wire Line
	4000 10150 4000 10500
Connection ~ 4000 10500
Wire Wire Line
	4900 10150 4900 10500
Connection ~ 4900 10500
Wire Wire Line
	10250 10500 10250 10250
Wire Wire Line
	11250 10500 11250 9650
Connection ~ 10250 10500
Wire Wire Line
	3600 5800 2550 5800
Connection ~ 2550 5800
Wire Wire Line
	2250 6500 2050 6500
Wire Wire Line
	7450 6050 7450 6300
Wire Wire Line
	7450 6300 7550 6300
Connection ~ 2900 10500
$Comp
L PORT U1
U 1 1 6685D7A3
P 1400 5000
F 0 "U1" H 1450 5100 30  0000 C CNN
F 1 "PORT" H 1400 5000 30  0000 C CNN
F 2 "" H 1400 5000 60  0000 C CNN
F 3 "" H 1400 5000 60  0000 C CNN
	1    1400 5000
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 3 1 6685E440
P 2050 6750
F 0 "U1" H 2100 6850 30  0000 C CNN
F 1 "PORT" H 2050 6750 30  0000 C CNN
F 2 "" H 2050 6750 60  0000 C CNN
F 3 "" H 2050 6750 60  0000 C CNN
	3    2050 6750
	0    -1   -1   0   
$EndComp
$Comp
L PORT U1
U 2 1 6685E849
P 1700 7200
F 0 "U1" H 1750 7300 30  0000 C CNN
F 1 "PORT" H 1700 7200 30  0000 C CNN
F 2 "" H 1700 7200 60  0000 C CNN
F 3 "" H 1700 7200 60  0000 C CNN
	2    1700 7200
	0    -1   -1   0   
$EndComp
$Comp
L PORT U1
U 4 1 6685ED47
P 2050 10500
F 0 "U1" H 2100 10600 30  0000 C CNN
F 1 "PORT" H 2050 10500 30  0000 C CNN
F 2 "" H 2050 10500 60  0000 C CNN
F 3 "" H 2050 10500 60  0000 C CNN
	4    2050 10500
	1    0    0    -1  
$EndComp
$Comp
L PORT U1
U 7 1 6685F38F
P 12000 7550
F 0 "U1" H 12050 7650 30  0000 C CNN
F 1 "PORT" H 12000 7550 30  0000 C CNN
F 2 "" H 12000 7550 60  0000 C CNN
F 3 "" H 12000 7550 60  0000 C CNN
	7    12000 7550
	0    1    1    0   
$EndComp
$Comp
L PORT U1
U 6 1 6685FCB8
P 9250 4700
F 0 "U1" H 9300 4800 30  0000 C CNN
F 1 "PORT" H 9250 4700 30  0000 C CNN
F 2 "" H 9250 4700 60  0000 C CNN
F 3 "" H 9250 4700 60  0000 C CNN
	6    9250 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 3750 9250 3750
Connection ~ 8500 3750
$Comp
L PORT U1
U 5 1 6686062D
P 9250 3500
F 0 "U1" H 9300 3600 30  0000 C CNN
F 1 "PORT" H 9250 3500 30  0000 C CNN
F 2 "" H 9250 3500 60  0000 C CNN
F 3 "" H 9250 3500 60  0000 C CNN
	5    9250 3500
	0    1    1    0   
$EndComp
$EndSCHEMATC