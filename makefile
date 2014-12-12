# Name :Makefile
# Author: NHPC

#Operation 


#make all   : -build obj + hex file
#make program: -burn hex file to hardware
#make clean : - clean auto-geneated file with file type as : .o .hex .map .lss

#CHIP
MCU= atmega32

#File name
FILE = test

#Compiler
CC=avr-gcc

#clean
clean : 
	@rm -f $(FILE).hex
	@rm -f $(FILE).o
	@rm -f $(FILE).map
	@rm -f $(FILE).lss
#make
all:
	@avr-gcc -mmcu=atmega32 -Os $(FILE).c -o $(FILE).o
	@avr-objcopy -j .text -j .data -O ihex $(FILE).o $(FILE).hex
#program
program:
	@sudo avrdude -p atmega32 -P /dev/ttyUSB0 -c stk500 -U flash:w:$(FILE).hex

