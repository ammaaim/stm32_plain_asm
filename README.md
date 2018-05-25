# stm32_plain_asm

In this example I use "blue pill" stm32 board & ST-LINK V2 programmer

For running this example you need:
* arm-none-eabi-gcc
* stlink

### Preparing

#### Software installation

##### MacOS
```
  brew install autoconf automake pkg-config libusb libusb-compat stlink
```

### Usage

Connect your "blue pill" board through ST-LINK to your PC

Check if software/hardware works correctly
```
st-info --chipid
st-info --pagesize
st-info --flash
```

Download your default (blink) program from board to PC
```
st-flash read ./default.bin 0x08000000 0x10000
```

Go to the project directory and run

```
  $ make
  $ make flash
```

Your cpu must be immersed in infnity loop

Enjoy!

thx -> @isqad
