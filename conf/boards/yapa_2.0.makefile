#
# yapa_2.0.makefile
#
# http://paparazzi.enac.fr/wiki/YAPA/v2.0
#

ARCH=lpc21

BOARD=yapa
BOARD_VERSION=2.0

BOARD_CFG=\"boards/$(BOARD)_$(BOARD_VERSION).h\"

# default flash mode is via usb bootloader
FLASH_MODE ?= IAP

LPC21ISP_BAUD = 38400
LPC21ISP_XTAL = 12000

#
# default LED configuration
#
RADIO_CONTROL_LED ?= none
BARO_LED          ?= none
AHRS_ALIGNER_LED  ?= none
GPS_LED           ?= 2
SYS_TIME_LED      ?= 1


#
# default uart settings
#
MODEM_PORT ?= UART1
MODEM_BAUD ?= B57600

GPS_PORT ?= UART0
GPS_BAUD ?= B38400


ADC_IR_TOP ?= ADC_0
ADC_IR1 ?= ADC_1
ADC_IR2 ?= ADC_2
ADC_IR_NB_SAMPLES ?= 16
ADC_GYRO_NB_SAMPLES ?= 16

ADC_GENERIC_NB_SAMPLES ?= 16

#
# you can use different actuators by adding a configure option to your firmware section
# e.g. <configure name="ACTUATORS" value="actuators_ppm/>
# and by setting the correct "driver" attribute in servo section
# e.g. <servo driver="Ppm">
#
ACTUATORS ?= actuators_4017

# All targets on the TINY board run on the same processor achitecture
$(TARGET).ARCHDIR = $(ARCH)
