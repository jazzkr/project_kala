#==== Main Options =============================================================

MCU = attiny87
#F_CPU = 8000000
TARGET = main
TARGET2 = WS2813


#==== Compile Options ==========================================================

CFLAGS = -mmcu=$(MCU) -I.
CFLAGS += -Os
#CFLAGS += -mint8
#CFLAGS += -mshort-calls
CFLAGS += -funsigned-char
CFLAGS += -funsigned-bitfields
CFLAGS += -fpack-struct
CFLAGS += -fshort-enums
#CFLAGS += -fno-unit-at-a-time
CFLAGS += -Wall
#CFLAGS += -Wstrict-prototypes
CFLAGS += -Wundef
#CFLAGS += -Wunreachable-code
#CFLAGS += -Wsign-compare
#CFLAGS += -std=gnu99


#===============================================================================
#==== Targets ==================================================================

CC = avr-gcc
OBJCOPY = avr-objcopy
REMOVE = rm -f

all: build

build:
	$(CC) -c $(CFLAGS) $(TARGET).cpp -o $(TARGET).o
	$(CC) -c $(CFLAGS) $(TARGET2).cpp -o $(TARGET2).o
	$(CC) $(CFLAGS) $(TARGET).o $(TARGET2).o --output $(TARGET).elf
	$(OBJCOPY) -O ihex -j .text -j .data $(TARGET).elf $(TARGET).hex

clean:
	$(REMOVE) "$(TARGET).hex"
	$(REMOVE) "$(TARGET).elf"
	$(REMOVE) "$(TARGET).o"