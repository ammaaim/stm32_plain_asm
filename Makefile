# you need install arm-gcc & stlnik software before

# project name = project dir name
NAME = $(shell basename $(CURDIR))


TARGET = $(NAME)
LDSCRIPT = stm32f103.ld


.PHONY: all install clean

all:
	make build
	make clean

clean:
	rm -rf *.o *.elf

purge:
	make clean
	rm *.bin

build:
	make $(TARGET).bin


$(TARGET).o: main.s
	arm-none-eabi-as -o $(TARGET).o main.s 

$(TARGET).elf:  $(TARGET).o
	arm-none-eabi-ld -o $(TARGET).elf -T $(LDSCRIPT) $(TARGET).o
  
$(TARGET).bin:  $(TARGET).elf
	arm-none-eabi-objcopy $(TARGET).elf $(TARGET).bin -O binary


flash: $(TARGET).bin
	st-flash write ./$(TARGET).bin 0x08000000

