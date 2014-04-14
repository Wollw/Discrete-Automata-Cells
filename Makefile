TARGET = main

SRC = $(wildcard *.c)

MCU = msp430g2001

MSPDEBUG = mspdebug
MSPPROGRAMMER = rf2500

CC = msp430-gcc
SIZE = msp430-size

CFLAGS = -Wall -Wextra -Werror -Wl,-Map,$(TARGET).map
CFLAGS+= -mmcu=$(MCU)

CSTANDARD = -std=c99

all: build
	
install: build
	$(MSPDEBUG) $(MSPPROGRAMMER) "erase"
	$(MSPDEBUG) $(MSPPROGRAMMER) "prog $(TARGET).elf"

debug-install: debug
	$(MSPDEBUG) $(MSPPROGRAMMER) "erase"
	$(MSPDEBUG) $(MSPPROGRAMMER) "prog $(TARGET).elf"

build:
	$(CC) $(CFLAGS) $(CSTANDARD) -oS -o $(TARGET).elf $(SRC)
	$(SIZE) $(TARGET).elf

debug:
	$(CC) $(CFLAGS) $(CSTANDARD) -oS -g -o $(TARGET).elf $(SRC)
	$(SIZE) $(TARGET).elf

mspdebug:
	$(MSPDEBUG) $(MSPPROGRAMMER)

clean:
	rm $(TARGET).elf
