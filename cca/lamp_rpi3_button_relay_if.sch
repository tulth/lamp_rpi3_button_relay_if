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
LIBS:t_switch
LIBS:t_transistor
LIBS:lamp_rpi3_button_relay_if-cache
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
L +5V #PWR01
U 1 1 57D35911
P 4900 2200
F 0 "#PWR01" H 4900 2050 50  0001 C CNN
F 1 "+5V" H 4900 2340 50  0000 C CNN
F 2 "" H 4900 2200 50  0000 C CNN
F 3 "" H 4900 2200 50  0000 C CNN
	1    4900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 57D35946
P 4800 2900
F 0 "#PWR02" H 4800 2650 50  0001 C CNN
F 1 "GND" H 4800 2750 50  0000 C CNN
F 2 "" H 4800 2900 50  0000 C CNN
F 3 "" H 4800 2900 50  0000 C CNN
	1    4800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2200 4900 2400
Wire Wire Line
	5000 2500 4800 2500
Wire Wire Line
	4900 2400 5000 2400
$Comp
L +5V #PWR03
U 1 1 57D43D33
P 3200 2200
F 0 "#PWR03" H 3200 2050 50  0001 C CNN
F 1 "+5V" H 3200 2340 50  0000 C CNN
F 2 "" H 3200 2200 50  0000 C CNN
F 3 "" H 3200 2200 50  0000 C CNN
	1    3200 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3200 2400
Wire Wire Line
	3200 2400 3100 2400
$Comp
L GND #PWR04
U 1 1 57D43E3F
P 3200 2800
F 0 "#PWR04" H 3200 2550 50  0001 C CNN
F 1 "GND" H 3200 2650 50  0000 C CNN
F 2 "" H 3200 2800 50  0000 C CNN
F 3 "" H 3200 2800 50  0000 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2700 3200 2700
Wire Wire Line
	3200 2700 3200 2800
Wire Wire Line
	3100 2500 4650 2500
Wire Wire Line
	3100 2600 3500 2600
Wire Wire Line
	3500 2600 3500 2900
Wire Wire Line
	3500 2900 3600 2900
$Comp
L GND #PWR05
U 1 1 57D4404E
P 3500 3200
F 0 "#PWR05" H 3500 2950 50  0001 C CNN
F 1 "GND" H 3500 3050 50  0000 C CNN
F 2 "" H 3500 3200 50  0000 C CNN
F 3 "" H 3500 3200 50  0000 C CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3100 3500 3200
$Comp
L lamp_cca_rpi3_conn P1
U 1 1 57D4419D
P 2900 2550
F 0 "P1" H 2900 2800 50  0000 C CNN
F 1 "lamp_cca_rpi3_conn" V 3000 2550 50  0000 C CNN
F 2 "t_footprints:conn_4_big_pads" H 2900 2550 50  0001 C CNN
F 3 "" H 2900 2550 50  0000 C CNN
	1    2900 2550
	-1   0    0    -1  
$EndComp
$Comp
L lamp_cca_relay_conn P2
U 1 1 57D441C6
P 5200 2550
F 0 "P2" H 5200 2800 50  0000 C CNN
F 1 "lamp_cca_relay_conn" V 5300 2550 50  0000 C CNN
F 2 "t_footprints:conn_4_big_pads" H 5200 2550 50  0001 C CNN
F 3 "" H 5200 2550 50  0000 C CNN
	1    5200 2550
	1    0    0    -1  
$EndComp
$Comp
L TSA12110 SW1
U 1 1 57D4453E
P 3900 3000
F 0 "SW1" H 3900 3160 50  0000 C CNN
F 1 "TSA12110" H 3900 3250 50  0000 C CNN
F 2 "t_footprints:TSA12110" H 4000 2750 50  0001 C CNN
F 3 "" H 4000 2750 50  0000 C CNN
	1    3900 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3100 3600 3100
Wire Wire Line
	4650 2500 4650 2600
Wire Wire Line
	4650 2600 5000 2600
Wire Wire Line
	4800 2500 4800 2700
Wire Wire Line
	4800 2700 4800 2900
Wire Wire Line
	5000 2700 4800 2700
Connection ~ 4800 2700
$Comp
L GND #PWR?
U 1 1 57D45042
P 4200 3200
F 0 "#PWR?" H 4200 2950 50  0001 C CNN
F 1 "GND" H 4200 3050 50  0000 C CNN
F 2 "" H 4200 3200 50  0000 C CNN
F 3 "" H 4200 3200 50  0000 C CNN
	1    4200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3100 4200 3200
$EndSCHEMATC
