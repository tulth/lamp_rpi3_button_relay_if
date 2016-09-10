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
LIBS:t_cap
LIBS:t_comm
LIBS:t_conn
LIBS:t_diode
LIBS:t_microcontroller
LIBS:t_opamp
LIBS:t_power
LIBS:t_relay
LIBS:t_res
LIBS:t_sensor
LIBS:t_transistor
LIBS:simple_relay_board-cache
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
L G5LE-14_DC5 K1
U 1 1 57D35277
P 5200 2600
F 0 "K1" H 5250 2900 50  0000 C CNN
F 1 "G5LE-14_DC5" V 5650 2600 50  0000 C CNN
F 2 "t_footprints:RELAY_1_FORM_C" V 5750 2600 50  0001 C CNN
F 3 "" H 6600 2750 50  0000 C CNN
	1    5200 2600
	1    0    0    -1  
$EndComp
$Comp
L 2N3904 Q1
U 1 1 57D35298
P 5000 3400
F 0 "Q1" H 5300 3450 50  0000 R CNN
F 1 "2N3904" H 5600 3350 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide_Oval" H 5200 3500 50  0001 C CNN
F 3 "" H 5000 3400 50  0000 C CNN
	1    5000 3400
	1    0    0    -1  
$EndComp
$Comp
L tstat_ui_conn P1
U 1 1 57D35697
P 2900 3200
F 0 "P1" H 2700 3300 60  0000 C CNN
F 1 "tstat_ui_conn" H 2700 2600 60  0000 C CNN
F 2 "t_footprints:JST_PH_RIGHT_6pin" H 2700 2600 60  0001 C CNN
F 3 "" H 2700 2600 60  0001 C CNN
	1    2900 3200
	1    0    0    -1  
$EndComp
$Comp
L 1N4148 D1
U 1 1 57D356C4
P 4200 2550
F 0 "D1" H 4200 2650 50  0000 C CNN
F 1 "1N4148" H 4200 2450 50  0000 C CNN
F 2 "t_footprints:DO-35" H 4100 2550 50  0001 C CNN
F 3 "" H 4200 2550 50  0000 C CNN
	1    4200 2550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 57D35321
P 6400 1850
F 0 "P2" H 6400 2000 50  0000 C CNN
F 1 "CONN_01X02" V 6500 1850 50  0000 C CNN
F 2 "t_footprints:Pin_Header_Straight_1x02" H 6400 1850 50  0001 C CNN
F 3 "" H 6400 1850 50  0000 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
$Comp
L R_thruhole R1
U 1 1 57D353FD
P 4300 3400
F 0 "R1" H 4300 3480 50  0000 C CNN
F 1 "4.75K" H 4300 3300 50  0000 C CNN
F 2 "t_footprints:Resistor_Horizontal_RM10mm" H 4400 3250 50  0001 C CNN
F 3 "" V 4300 3300 50  0000 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR01
U 1 1 57D35911
P 3000 3100
F 0 "#PWR01" H 3000 2950 50  0001 C CNN
F 1 "+5V" H 3000 3240 50  0000 C CNN
F 2 "" H 3000 3100 50  0000 C CNN
F 3 "" H 3000 3100 50  0000 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57D35946
P 3200 3900
F 0 "#PWR02" H 3200 3650 50  0001 C CNN
F 1 "GND" H 3200 3750 50  0000 C CNN
F 2 "" H 3200 3900 50  0000 C CNN
F 3 "" H 3200 3900 50  0000 C CNN
	1    3200 3900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 57D359BF
P 5100 1600
F 0 "#PWR03" H 5100 1450 50  0001 C CNN
F 1 "+5V" H 5100 1740 50  0000 C CNN
F 2 "" H 5100 1600 50  0000 C CNN
F 3 "" H 5100 1600 50  0000 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 57D359EC
P 5100 3900
F 0 "#PWR04" H 5100 3650 50  0001 C CNN
F 1 "GND" H 5100 3750 50  0000 C CNN
F 2 "" H 5100 3900 50  0000 C CNN
F 3 "" H 5100 3900 50  0000 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2200 5450 1900
Wire Wire Line
	5450 1900 6200 1900
Wire Wire Line
	6200 1800 4550 1800
Wire Wire Line
	4550 1800 4550 2600
Wire Wire Line
	4550 2600 4650 2600
Wire Wire Line
	5100 3000 5100 3200
Wire Wire Line
	3000 3100 3000 3200
Wire Wire Line
	3000 3200 2900 3200
Wire Wire Line
	2900 3300 3200 3300
Wire Wire Line
	3200 3300 3200 3900
Wire Wire Line
	2900 3500 3200 3500
Connection ~ 3200 3500
Wire Wire Line
	2900 3700 3200 3700
Connection ~ 3200 3700
Wire Wire Line
	5100 1600 5100 2200
Wire Wire Line
	5100 3600 5100 3900
Wire Wire Line
	4800 3400 4500 3400
Wire Wire Line
	4100 3400 2900 3400
Wire Wire Line
	5100 2100 4200 2100
Wire Wire Line
	4200 2100 4200 2400
Connection ~ 5100 2100
Wire Wire Line
	4200 2700 4200 3100
Wire Wire Line
	4200 3100 5100 3100
Connection ~ 5100 3100
$EndSCHEMATC
