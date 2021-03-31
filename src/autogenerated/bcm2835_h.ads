pragma Style_Checks (Off);

with Interfaces.C; use Interfaces.C;
with x86_64_linux_gnu_bits_stdint_uintn_h;
with Interfaces.C.Strings;

package bcm2835_h is

   HIGH : constant := 16#1#;  --  /usr/local/include/bcm2835.h:190

   LOW : constant := 16#0#;  --  /usr/local/include/bcm2835.h:192

   BCM2835_PERI_BASE : constant :=
     16#2000_0000#;  --  /usr/local/include/bcm2835.h:196
   --  unsupported macro: BCM2835_GPIO_PADS (BCM2835_PERI_BASE + 0x100000)
   --  unsupported macro: BCM2835_CLOCK_BASE (BCM2835_PERI_BASE + 0x101000)
   --  unsupported macro: BCM2835_GPIO_BASE (BCM2835_PERI_BASE + 0x200000)
   --  unsupported macro: BCM2835_SPI0_BASE (BCM2835_PERI_BASE + 0x204000)
   --  unsupported macro: BCM2835_GPIO_PWM (BCM2835_PERI_BASE + 0x20C000)

   BCM2835_PAGE_SIZE : constant :=
     (4 * 1_024);  --  /usr/local/include/bcm2835.h:230

   BCM2835_BLOCK_SIZE : constant :=
     (4 * 1_024);  --  /usr/local/include/bcm2835.h:232

   BCM2835_GPFSEL0 : constant :=
     16#0000#;  --  /usr/local/include/bcm2835.h:239
   BCM2835_GPFSEL1 : constant :=
     16#0004#;  --  /usr/local/include/bcm2835.h:240
   BCM2835_GPFSEL2 : constant :=
     16#0008#;  --  /usr/local/include/bcm2835.h:241
   BCM2835_GPFSEL3 : constant :=
     16#000c#;  --  /usr/local/include/bcm2835.h:242
   BCM2835_GPFSEL4 : constant :=
     16#0010#;  --  /usr/local/include/bcm2835.h:243
   BCM2835_GPFSEL5 : constant :=
     16#0014#;  --  /usr/local/include/bcm2835.h:244
   BCM2835_GPSET0 : constant := 16#001c#;  --  /usr/local/include/bcm2835.h:245
   BCM2835_GPSET1 : constant := 16#0020#;  --  /usr/local/include/bcm2835.h:246
   BCM2835_GPCLR0 : constant := 16#0028#;  --  /usr/local/include/bcm2835.h:247
   BCM2835_GPCLR1 : constant := 16#002c#;  --  /usr/local/include/bcm2835.h:248
   BCM2835_GPLEV0 : constant := 16#0034#;  --  /usr/local/include/bcm2835.h:249
   BCM2835_GPLEV1 : constant := 16#0038#;  --  /usr/local/include/bcm2835.h:250
   BCM2835_GPEDS0 : constant := 16#0040#;  --  /usr/local/include/bcm2835.h:251
   BCM2835_GPEDS1 : constant := 16#0044#;  --  /usr/local/include/bcm2835.h:252
   BCM2835_GPREN0 : constant := 16#004c#;  --  /usr/local/include/bcm2835.h:253
   BCM2835_GPREN1 : constant := 16#0050#;  --  /usr/local/include/bcm2835.h:254
   BCM2835_GPFEN0 : constant := 16#0048#;  --  /usr/local/include/bcm2835.h:255
   BCM2835_GPFEN1 : constant := 16#005c#;  --  /usr/local/include/bcm2835.h:256
   BCM2835_GPHEN0 : constant := 16#0064#;  --  /usr/local/include/bcm2835.h:257
   BCM2835_GPHEN1 : constant := 16#0068#;  --  /usr/local/include/bcm2835.h:258
   BCM2835_GPLEN0 : constant := 16#0070#;  --  /usr/local/include/bcm2835.h:259
   BCM2835_GPLEN1 : constant := 16#0074#;  --  /usr/local/include/bcm2835.h:260
   BCM2835_GPAREN0 : constant :=
     16#007c#;  --  /usr/local/include/bcm2835.h:261
   BCM2835_GPAREN1 : constant :=
     16#0080#;  --  /usr/local/include/bcm2835.h:262
   BCM2835_GPAFEN0 : constant :=
     16#0088#;  --  /usr/local/include/bcm2835.h:263
   BCM2835_GPAFEN1 : constant :=
     16#008c#;  --  /usr/local/include/bcm2835.h:264
   BCM2835_GPPUD : constant := 16#0094#;  --  /usr/local/include/bcm2835.h:265
   BCM2835_GPPUDCLK0 : constant :=
     16#0098#;  --  /usr/local/include/bcm2835.h:266
   BCM2835_GPPUDCLK1 : constant :=
     16#009c#;  --  /usr/local/include/bcm2835.h:267

   BCM2835_PADS_GPIO_0_27 : constant :=
     16#002c#;  --  /usr/local/include/bcm2835.h:294
   BCM2835_PADS_GPIO_28_45 : constant :=
     16#0030#;  --  /usr/local/include/bcm2835.h:295
   BCM2835_PADS_GPIO_46_53 : constant :=
     16#0034#;  --  /usr/local/include/bcm2835.h:296
   --  unsupported macro: BCM2835_PAD_PASSWRD (0x5A << 24)

   BCM2835_PAD_SLEW_RATE_UNLIMITED : constant :=
     16#10#;  --  /usr/local/include/bcm2835.h:300
   BCM2835_PAD_HYSTERESIS_ENABLED : constant :=
     16#08#;  --  /usr/local/include/bcm2835.h:301
   BCM2835_PAD_DRIVE_2mA : constant :=
     16#00#;  --  /usr/local/include/bcm2835.h:302
   BCM2835_PAD_DRIVE_4mA : constant :=
     16#01#;  --  /usr/local/include/bcm2835.h:303
   BCM2835_PAD_DRIVE_6mA : constant :=
     16#02#;  --  /usr/local/include/bcm2835.h:304
   BCM2835_PAD_DRIVE_8mA : constant :=
     16#03#;  --  /usr/local/include/bcm2835.h:305
   BCM2835_PAD_DRIVE_10mA : constant :=
     16#04#;  --  /usr/local/include/bcm2835.h:306
   BCM2835_PAD_DRIVE_12mA : constant :=
     16#05#;  --  /usr/local/include/bcm2835.h:307
   BCM2835_PAD_DRIVE_14mA : constant :=
     16#06#;  --  /usr/local/include/bcm2835.h:308
   BCM2835_PAD_DRIVE_16mA : constant :=
     16#07#;  --  /usr/local/include/bcm2835.h:309

   BCM2835_SPI0_CS : constant :=
     16#0000#;  --  /usr/local/include/bcm2835.h:380
   BCM2835_SPI0_FIFO : constant :=
     16#0004#;  --  /usr/local/include/bcm2835.h:381
   BCM2835_SPI0_CLK : constant :=
     16#0008#;  --  /usr/local/include/bcm2835.h:382
   BCM2835_SPI0_DLEN : constant :=
     16#000c#;  --  /usr/local/include/bcm2835.h:383
   BCM2835_SPI0_LTOH : constant :=
     16#0010#;  --  /usr/local/include/bcm2835.h:384
   BCM2835_SPI0_DC : constant :=
     16#0014#;  --  /usr/local/include/bcm2835.h:385

   BCM2835_SPI0_CS_LEN_LONG : constant :=
     16#0200_0000#;  --  /usr/local/include/bcm2835.h:388
   BCM2835_SPI0_CS_DMA_LEN : constant :=
     16#0100_0000#;  --  /usr/local/include/bcm2835.h:389
   BCM2835_SPI0_CS_CSPOL2 : constant :=
     16#0080_0000#;  --  /usr/local/include/bcm2835.h:390
   BCM2835_SPI0_CS_CSPOL1 : constant :=
     16#0040_0000#;  --  /usr/local/include/bcm2835.h:391
   BCM2835_SPI0_CS_CSPOL0 : constant :=
     16#0020_0000#;  --  /usr/local/include/bcm2835.h:392
   BCM2835_SPI0_CS_RXF : constant :=
     16#0010_0000#;  --  /usr/local/include/bcm2835.h:393
   BCM2835_SPI0_CS_RXR : constant :=
     16#0008_0000#;  --  /usr/local/include/bcm2835.h:394
   BCM2835_SPI0_CS_TXD : constant :=
     16#0004_0000#;  --  /usr/local/include/bcm2835.h:395
   BCM2835_SPI0_CS_RXD : constant :=
     16#0002_0000#;  --  /usr/local/include/bcm2835.h:396
   BCM2835_SPI0_CS_DONE : constant :=
     16#0001_0000#;  --  /usr/local/include/bcm2835.h:397
   BCM2835_SPI0_CS_TE_EN : constant :=
     16#0000_8000#;  --  /usr/local/include/bcm2835.h:398
   BCM2835_SPI0_CS_LMONO : constant :=
     16#0000_4000#;  --  /usr/local/include/bcm2835.h:399
   BCM2835_SPI0_CS_LEN : constant :=
     16#0000_2000#;  --  /usr/local/include/bcm2835.h:400
   BCM2835_SPI0_CS_REN : constant :=
     16#0000_1000#;  --  /usr/local/include/bcm2835.h:401
   BCM2835_SPI0_CS_ADCS : constant :=
     16#0000_0800#;  --  /usr/local/include/bcm2835.h:402
   BCM2835_SPI0_CS_INTR : constant :=
     16#0000_0400#;  --  /usr/local/include/bcm2835.h:403
   BCM2835_SPI0_CS_INTD : constant :=
     16#0000_0200#;  --  /usr/local/include/bcm2835.h:404
   BCM2835_SPI0_CS_DMAEN : constant :=
     16#0000_0100#;  --  /usr/local/include/bcm2835.h:405
   BCM2835_SPI0_CS_TA : constant :=
     16#0000_0080#;  --  /usr/local/include/bcm2835.h:406
   BCM2835_SPI0_CS_CSPOL : constant :=
     16#0000_0040#;  --  /usr/local/include/bcm2835.h:407
   BCM2835_SPI0_CS_CLEAR : constant :=
     16#0000_0030#;  --  /usr/local/include/bcm2835.h:408
   BCM2835_SPI0_CS_CLEAR_RX : constant :=
     16#0000_0020#;  --  /usr/local/include/bcm2835.h:409
   BCM2835_SPI0_CS_CLEAR_TX : constant :=
     16#0000_0010#;  --  /usr/local/include/bcm2835.h:410
   BCM2835_SPI0_CS_CPOL : constant :=
     16#0000_0008#;  --  /usr/local/include/bcm2835.h:411
   BCM2835_SPI0_CS_CPHA : constant :=
     16#0000_0004#;  --  /usr/local/include/bcm2835.h:412
   BCM2835_SPI0_CS_CS : constant :=
     16#0000_0003#;  --  /usr/local/include/bcm2835.h:413

   BCM2835_PWM_CONTROL : constant := 0;  --  /usr/local/include/bcm2835.h:475
   BCM2835_PWM_STATUS  : constant := 1;  --  /usr/local/include/bcm2835.h:476
   BCM2835_PWM0_RANGE  : constant := 4;  --  /usr/local/include/bcm2835.h:477
   BCM2835_PWM0_DATA   : constant := 5;  --  /usr/local/include/bcm2835.h:478
   BCM2835_PWM1_RANGE  : constant := 8;  --  /usr/local/include/bcm2835.h:479
   BCM2835_PWM1_DATA   : constant := 9;  --  /usr/local/include/bcm2835.h:480

   BCM2835_PWMCLK_CNTL : constant := 40;  --  /usr/local/include/bcm2835.h:482
   BCM2835_PWMCLK_DIV  : constant := 41;  --  /usr/local/include/bcm2835.h:483

   BCM2835_PWM1_MS_MODE : constant :=
     16#8000#;  --  /usr/local/include/bcm2835.h:485
   BCM2835_PWM1_USEFIFO : constant :=
     16#2000#;  --  /usr/local/include/bcm2835.h:486
   BCM2835_PWM1_REVPOLAR : constant :=
     16#1000#;  --  /usr/local/include/bcm2835.h:487
   BCM2835_PWM1_OFFSTATE : constant :=
     16#0800#;  --  /usr/local/include/bcm2835.h:488
   BCM2835_PWM1_REPEATFF : constant :=
     16#0400#;  --  /usr/local/include/bcm2835.h:489
   BCM2835_PWM1_SERIAL : constant :=
     16#0200#;  --  /usr/local/include/bcm2835.h:490
   BCM2835_PWM1_ENABLE : constant :=
     16#0100#;  --  /usr/local/include/bcm2835.h:491

   BCM2835_PWM0_MS_MODE : constant :=
     16#0080#;  --  /usr/local/include/bcm2835.h:493
   BCM2835_PWM0_USEFIFO : constant :=
     16#0020#;  --  /usr/local/include/bcm2835.h:494
   BCM2835_PWM0_REVPOLAR : constant :=
     16#0010#;  --  /usr/local/include/bcm2835.h:495
   BCM2835_PWM0_OFFSTATE : constant :=
     16#0008#;  --  /usr/local/include/bcm2835.h:496
   BCM2835_PWM0_REPEATFF : constant :=
     16#0004#;  --  /usr/local/include/bcm2835.h:497
   BCM2835_PWM0_SERIAL : constant :=
     16#0002#;  --  /usr/local/include/bcm2835.h:498
   BCM2835_PWM0_ENABLE : constant :=
     16#0001#;  --  /usr/local/include/bcm2835.h:499
   --  arg-macro: procedure delay (x)
   --    bcm2835_delay(x)
   --  arg-macro: procedure delayMicroseconds (x)
   --    bcm2835_delayMicroseconds(x)

   -- bcm2835.h
   -- C and C++ support for Broadcom BCM 2835 as used in Raspberry Pi Author:
   -- Mike McCauley (mikem@open.com.au) Copyright (C) 2011-2012 Mike McCauley
   -- $Id: bcm2835.h,v 1.7 2012/12/01 22:56:52 mikem Exp mikem $
  --/ \mainpage C library for Broadcom BCM 2835 as used in Raspberry Pi
  --/
  --/ This is a C library for Raspberry Pi (RPi). It provides access to
  --/ GPIO and other IO functions on the Broadcom BCM 2835 chip,
  --/ allowing access to the GPIO pins on the
  --/ 26 pin IDE plug on the RPi board so you can control and interface with various external devices.
  --/
  --/ It provides functions for reading digital inputs and setting digital outputs.
  --/ Pin event detection is supported by polling (interrupts not supported).
  --/
  --/ It is C++ compatible, and installs as a header file and non-shared library on
  --/ any Linux-based distro (but clearly is no use except on Raspberry Pi or another board with
  --/ BCM 2835).
  --/
  --/ The version of the package that this documentation refers to can be downloaded
  --/ from http://www.open.com.au/mikem/bcm2835/bcm2835-1.15.tar.gz
  --/ You can find the latest version at http://www.open.com.au/mikem/bcm2835
  --/
  --/ Several example programs are provided.
  --/
  --/ Based on data in http://elinux.org/RPi_Low-level_peripherals and
  --/ http://www.raspberrypi.org/wp-content/uploads/2012/02/BCM2835-ARM-Peripherals.pdf
  --/ and http://www.scribd.com/doc/101830961/GPIO-Pads-Control2
  --/
  --/ You can also find online help and discussion at http://groups.google.com/group/bcm2835
  --/ Please use that group for all questions and discussions on this topic.
  --/ Do not contact the author directly, unless it is to discuss commercial licensing.
  --/
  --/ Tested on debian6-19-04-2012, 2012-07-15-wheezy-raspbian and Occidentalisv01
  --/ CAUTION: it has been observed that when detect enables such as bcm2835_gpio_len()
  --/ are used and the pin is pulled LOW
  --/ it can cause temporary hangs on 2012-07-15-wheezy-raspbian and Occidentalisv01.
  --/ Reason for this is not yet determined, but suspect that an interrupt handler is
  --/ hitting a hard loop on those OSs.
  --/ If you must use bcm2835_gpio_len() and friends, make sure you disable the pins with
  --/ bcm2835_gpio_cler_len() and friends after use.
  --/
  --/ \par Installation
  --/
  --/ This library consists of a single non-shared library and header file, which will be
  --/ installed in the usual places by make install
  --/
  --/ \code
  --/ tar zxvf bcm2835-1.0.tar.gz
  --/ cd bcm2835-1.0
  --/ ./configure
  --/ make
  --/ sudo make check
  --/ sudo make install
  --/ \endcode
  --/
  --/ \par Physical Addresses
  --/
  --/ The functions bcm2835_peri_read(), bcm2835_peri_write() and bcm2835_peri_set_bits()
  --/ are low level peripheral register access functions. They are designed to use
  --/ physical addresses as described in section 1.2.3 ARM physical addresses
  --/ of the BCM2835 ARM Peripherals manual.
  --/ Physical addresses range from 0x20000000 to 0x20FFFFFF for peripherals. The bus
  --/ addresses for peripherals are set up to map onto the peripheral bus address range starting at
  --/ 0x7E000000. Thus a peripheral advertised in the manual at bus address 0x7Ennnnnn is available at
  --/ physical address 0x20nnnnnn.
  --/
  --/ The base address of the various peripheral registers are available with the following
  --/ externals:
  --/ bcm2835_gpio
  --/ bcm2835_pwm
  --/ bcm2835_clk
  --/ bcm2835_pads
  --/ bcm2835_spio0
  --/
  --/ \par Pin Numbering
  --/
  --/ The GPIO pin numbering as used by RPi is different to and inconsistent with the underlying
  --/ BCM 2835 chip pin numbering. http://elinux.org/RPi_BCM2835_GPIOs
  --/
  --/ RPi has a 26 pin IDE header that provides access to some of the GPIO pins on the BCM 2835,
  --/ as well as power and ground pins. Not all GPIO pins on the BCM 2835 are available on the
  --/ IDE header.
  --/
  --/ RPi Version 2 also has a P5 connector with 4 GPIO pins, 5V, 3.3V and Gnd.
  --/
  --/ The functions in this library are designed to be passed the BCM 2835 GPIO pin number and _not_
  --/ the RPi pin number. There are symbolic definitions for each of the available pins
  --/ that you should use for convenience. See \ref RPiGPIOPin.
  --/
  --/ \par SPI Pins
  --/
  --/ The bcm2835_spi_* functions allow you to control the BCM 2835 SPI0 interface,
  --/ allowing you to send and received data by SPI (Serial Peripheral Interface).
  --/ For more information about SPI, see http://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus
  --/
  --/ When bcm2835_spi_begin() is called it changes the bahaviour of the SPI interface pins from their
  --/ default GPIO behaviour in order to support SPI. While SPI is in use, you will not be able
  --/ to control the state of the SPI pins through the usual bcm2835_spi_gpio_write().
  --/ When bcm2835_spi_end() is called, the SPI pins will all revert to inputs, and can then be
  --/ configured and controled with the usual bcm2835_gpio_* calls.
  --/
  --/ The Raspberry Pi GPIO pins used for SPI are:
  --/
  --/ - P1-19 (MOSI)
  --/ - P1-21 (MISO)
  --/ - P1-23 (CLK)
  --/ - P1-24 (CE0)
  --/ - P1-26 (CE1)
  --/
  --/ \par Open Source Licensing GPL V2
  --/
  --/ This is the appropriate option if you want to share the source code of your
  --/ application with everyone you distribute it to, and you also want to give them
  --/ the right to share who uses it. If you wish to use this software under Open
  --/ Source Licensing, you must contribute all your source code to the open source
  --/ community in accordance with the GPL Version 2 when your application is
  --/ distributed. See http://www.gnu.org/copyleft/gpl.html and COPYING
  --/
  --/ \par Acknowledgements
  --/
  --/ Some of this code has been inspired by Dom and Gert.
  --/
  --/ \par Revision History
  --/
  --/ \version 1.0 Initial release
  --/ \version 1.1 Minor bug fixes
  --/ \version 1.2 Added support for SPI
  --/ \version 1.3 Added bcm2835_spi_transfern()
  --/ \version 1.4 Fixed a problem that prevented SPI CE1 being used. Reported by David Robinson.
  --/ \version 1.5 Added bcm2835_close() to deinit the library. Suggested by C?sar Ortiz
  --/ \version 1.6 Document testing on 2012-07-15-wheezy-raspbian and Occidentalisv01
  --/              Functions bcm2835_gpio_ren(), bcm2835_gpio_fen(), bcm2835_gpio_hen()
  --/               bcm2835_gpio_len(), bcm2835_gpio_aren() and bcm2835_gpio_afen() now
  --/               changes only the pin specified. Other pins that were already previoulsy
  --/               enabled stay enabled.
  --/              Added  bcm2835_gpio_clr_ren(), bcm2835_gpio_clr_fen(), bcm2835_gpio_clr_hen()
  --/                bcm2835_gpio_clr_len(), bcm2835_gpio_clr_aren(), bcm2835_gpio_clr_afen()
  --/                to clear the enable for individual pins, suggested by Andreas Sundstrom.
  --/ \version 1.7 Added bcm2835_spi_transfernb to support different buffers for read and write.
  --/ \version 1.8 Improvements to read barrier, as suggested by maddin.
  --/ \version 1.9 Improvements contributed by mikew:
  --/              I noticed that it was mallocing memory for the mmaps on /dev/mem.
  --/              It's not necessary to do that, you can just mmap the file directly,
  --/              so I've removed the mallocs (and frees).
  --/              I've also modified delayMicroseconds() to use nanosleep() for long waits,
  --/              and a busy wait on a high resolution timer for the rest. This is because
  --/              I've found that calling nanosleep() takes at least 100-200 us.
  --/              You need to link using '-lrt' using this version.
  --/              I've added some unsigned casts to the debug prints to silence compiler
  --/              warnings I was getting, fixed some typos, and changed the value of
  --/              BCM2835_PAD_HYSTERESIS_ENABLED to 0x08 as per Gert van Loo's doc at
  --/              http://www.scribd.com/doc/101830961/GPIO-Pads-Control2
  --/              Also added a define for the passwrd value that Gert says is needed to
  --/              change pad control settings.
  --/ \version 1.10 Changed the names of the delay functions to bcm2835_delay()
  --/              and bcm2835_delayMicroseconds() to prevent collisions with wiringPi.
  --/              Macros to map delay()-> bcm2835_delay() and
  --/              Macros to map delayMicroseconds()-> bcm2835_delayMicroseconds(), which
  --/              can be disabled by defining BCM2835_NO_DELAY_COMPATIBILITY
  --/ \version 1.11 Fixed incorrect link to download file
  --/ \version 1.12 New GPIO pin definitions for RPi version 2 (which has a diffrent GPIO mapping)
  --/ \version 1.13 New GPIO pin definitions for RPi version 2 plug P5
  --/               Hardware base pointers are now available (after initialisation) externally as bcm2835_gpio
  --/               bcm2835_pwm bcm2835_clk bcm2835_pads bcm2835_spi0.
  --/ \version 1.14 Now compiles even if CLOCK_MONOTONIC_RAW is not available, uses CLOCK_MONOTONIC instead.
  --/               Fixed errors in documentation of SPI divider prefquencies based on 250MHz clock.
  --/               Reported by Ben Simpson.
  --/ \version 1.15 Added bcm2835_close() to end of examples as suggested by Mark Wolfe.
  --/
  --/ \author  Mike McCauley (mikem@open.com.au)
   -- Defines for BCM2835
  --/ \defgroup constants Constants for passing to and from library functions
  --/ The values here are designed to be passed to various functions in the bcm2835 library.
  --/ @{
  --/ This means pin HIGH, true, 3.3volts on a pin.
  --/ This means pin LOW, false, 0volts on a pin.
   -- Physical addresses for various peripheral register sets
  --/ Base Physical Address of the BCM 2835 peripheral registers
  --/ Base Physical Address of the Pads registers
  --/ Base Physical Address of the Clock/timer registers
  --/ Base Physical Address of the GPIO registers
  --/ Base Physical Address of the SPI0 registers
  --/ Base Physical Address of the PWM registers
  --/ Base of the GPIO registers.
  --/ Available after bcm2835_init has been called
   bcm2835_gpio : access x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:210
   pragma Import (C, bcm2835_gpio, "bcm2835_gpio");

  --/ Base of the PWM registers.
  --/ Available after bcm2835_init has been called
   bcm2835_pwm : access x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:214
   pragma Import (C, bcm2835_pwm, "bcm2835_pwm");

  --/ Base of the CLK registers.
  --/ Available after bcm2835_init has been called
   bcm2835_clk : access x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:218
   pragma Import (C, bcm2835_clk, "bcm2835_clk");

  --/ Base of the PADS registers.
  --/ Available after bcm2835_init has been called
   bcm2835_pads : access x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:222
   pragma Import (C, bcm2835_pads, "bcm2835_pads");

  --/ Base of the SPI0 registers.
  --/ Available after bcm2835_init has been called
   bcm2835_spi0 : access x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:226
   pragma Import (C, bcm2835_spi0, "bcm2835_spi0");

  --/ Size of memory page on RPi
  --/ Size of memory block on RPi
   -- Defines for GPIO
   -- The BCM2835 has 54 GPIO pins.
   --      BCM2835 data sheet, Page 90 onwards.
  --/ GPIO register offsets from BCM2835_GPIO_BASE. Offsets into the GPIO Peripheral block in bytes per 6.1 Register View
  --/ \brief bcm2835PortFunction
  --/ Port function select modes for bcm2835_gpio_fsel()
  --/< Input
  --/< Output
  --/< Alternate function 0
  --/< Alternate function 1
  --/< Alternate function 2
  --/< Alternate function 3
  --/< Alternate function 4
  --/< Alternate function 5
  --/< Function select bits mask
   subtype bcm2835FunctionSelect is unsigned;
   BCM2835_GPIO_FSEL_INPT : constant unsigned := 0;
   BCM2835_GPIO_FSEL_OUTP : constant unsigned := 1;
   BCM2835_GPIO_FSEL_ALT0 : constant unsigned := 4;
   BCM2835_GPIO_FSEL_ALT1 : constant unsigned := 5;
   BCM2835_GPIO_FSEL_ALT2 : constant unsigned := 6;
   BCM2835_GPIO_FSEL_ALT3 : constant unsigned := 7;
   BCM2835_GPIO_FSEL_ALT4 : constant unsigned := 3;
   BCM2835_GPIO_FSEL_ALT5 : constant unsigned := 2;
   BCM2835_GPIO_FSEL_MASK : constant unsigned :=
     7;  -- /usr/local/include/bcm2835.h:282

  --/ \brief bcm2835PUDControl
  --/ Pullup/Pulldown defines for bcm2835_gpio_pud()
  --/< Off ? disable pull-up/down
  --/< Enable Pull Down control
  --/< Enable Pull Up control
   type bcm2835PUDControl is
     (BCM2835_GPIO_PUD_OFF, BCM2835_GPIO_PUD_DOWN, BCM2835_GPIO_PUD_UP);
   pragma Convention
     (C, bcm2835PUDControl);  -- /usr/local/include/bcm2835.h:291

  --/ Pad control register offsets from BCM2835_GPIO_PADS
  --/ Pad Control masks
  --/ \brief bcm2835PadGroup
  --/ Pad group specification for bcm2835_gpio_pad()
  --/< Pad group for GPIO pads 0 to 27
  --/< Pad group for GPIO pads 28 to 45
  --/< Pad group for GPIO pads 46 to 53
   type bcm2835PadGroup is
     (BCM2835_PAD_GROUP_GPIO_0_27, BCM2835_PAD_GROUP_GPIO_28_45,
      BCM2835_PAD_GROUP_GPIO_46_53);
   pragma Convention (C, bcm2835PadGroup);  -- /usr/local/include/bcm2835.h:318

  --/ \brief GPIO Pin Numbers
  --/
  --/ Here we define Raspberry Pin GPIO pins on P1 in terms of the underlying BCM GPIO pin numbers.
  --/ These can be passed as a pin number to any function requiring a pin.
  --/ Not all pins on the RPi 26 bin IDE plug are connected to GPIO pins
  --/ and some can adopt an alternate function.
  --/ RPi version 2 has some slightly different pinouts, and these are values RPI_V2_*.
  --/ At bootup, pins 8 and 10 are set to UART0_TXD, UART0_RXD (ie the alt0 function) respectively
  --/ When SPI0 is in use (ie after bcm2835_spi_begin()), pins 19, 21, 23, 24, 26 are dedicated to SPI
  --/ and cant be controlled independently
  --/< Version 1, Pin P1-03
  --/< Version 1, Pin P1-05
  --/< Version 1, Pin P1-07
  --/< Version 1, Pin P1-08, defaults to alt function 0 UART0_TXD
  --/< Version 1, Pin P1-10, defaults to alt function 0 UART0_RXD
  --/< Version 1, Pin P1-11
  --/< Version 1, Pin P1-12
  --/< Version 1, Pin P1-13
  --/< Version 1, Pin P1-15
  --/< Version 1, Pin P1-16
  --/< Version 1, Pin P1-18
  --/< Version 1, Pin P1-19, MOSI when SPI0 in use
  --/< Version 1, Pin P1-21, MISO when SPI0 in use
  --/< Version 1, Pin P1-22
  --/< Version 1, Pin P1-23, CLK when SPI0 in use
  --/< Version 1, Pin P1-24, CE0 when SPI0 in use
  --/< Version 1, Pin P1-26, CE1 when SPI0 in use
   -- RPi Version 2
  --/< Version 2, Pin P1-03
  --/< Version 2, Pin P1-05
  --/< Version 2, Pin P1-07
  --/< Version 2, Pin P1-08, defaults to alt function 0 UART0_TXD
  --/< Version 2, Pin P1-10, defaults to alt function 0 UART0_RXD
  --/< Version 2, Pin P1-11
  --/< Version 2, Pin P1-12
  --/< Version 2, Pin P1-13
  --/< Version 2, Pin P1-15
  --/< Version 2, Pin P1-16
  --/< Version 2, Pin P1-18
  --/< Version 2, Pin P1-19, MOSI when SPI0 in use
  --/< Version 2, Pin P1-21, MISO when SPI0 in use
  --/< Version 2, Pin P1-22
  --/< Version 2, Pin P1-23, CLK when SPI0 in use
  --/< Version 2, Pin P1-24, CE0 when SPI0 in use
  --/< Version 2, Pin P1-26, CE1 when SPI0 in use
   -- RPi Version 2, new plug P5
  --/< Version 2, Pin P5-03
  --/< Version 2, Pin P5-04
  --/< Version 2, Pin P5-05
  --/< Version 2, Pin P5-06
   subtype RPiGPIOPin is unsigned;
   RPI_GPIO_P1_03    : constant unsigned := 0;
   RPI_GPIO_P1_05    : constant unsigned := 1;
   RPI_GPIO_P1_07    : constant unsigned := 4;
   RPI_GPIO_P1_08    : constant unsigned := 14;
   RPI_GPIO_P1_10    : constant unsigned := 15;
   RPI_GPIO_P1_11    : constant unsigned := 17;
   RPI_GPIO_P1_12    : constant unsigned := 18;
   RPI_GPIO_P1_13    : constant unsigned := 21;
   RPI_GPIO_P1_15    : constant unsigned := 22;
   RPI_GPIO_P1_16    : constant unsigned := 23;
   RPI_GPIO_P1_18    : constant unsigned := 24;
   RPI_GPIO_P1_19    : constant unsigned := 10;
   RPI_GPIO_P1_21    : constant unsigned := 9;
   RPI_GPIO_P1_22    : constant unsigned := 25;
   RPI_GPIO_P1_23    : constant unsigned := 11;
   RPI_GPIO_P1_24    : constant unsigned := 8;
   RPI_GPIO_P1_26    : constant unsigned := 7;
   RPI_V2_GPIO_P1_03 : constant unsigned := 2;
   RPI_V2_GPIO_P1_05 : constant unsigned := 3;
   RPI_V2_GPIO_P1_07 : constant unsigned := 4;
   RPI_V2_GPIO_P1_08 : constant unsigned := 14;
   RPI_V2_GPIO_P1_10 : constant unsigned := 15;
   RPI_V2_GPIO_P1_11 : constant unsigned := 17;
   RPI_V2_GPIO_P1_12 : constant unsigned := 18;
   RPI_V2_GPIO_P1_13 : constant unsigned := 27;
   RPI_V2_GPIO_P1_15 : constant unsigned := 22;
   RPI_V2_GPIO_P1_16 : constant unsigned := 23;
   RPI_V2_GPIO_P1_18 : constant unsigned := 24;
   RPI_V2_GPIO_P1_19 : constant unsigned := 10;
   RPI_V2_GPIO_P1_21 : constant unsigned := 9;
   RPI_V2_GPIO_P1_22 : constant unsigned := 25;
   RPI_V2_GPIO_P1_23 : constant unsigned := 11;
   RPI_V2_GPIO_P1_24 : constant unsigned := 8;
   RPI_V2_GPIO_P1_26 : constant unsigned := 7;
   RPI_V2_GPIO_P5_03 : constant unsigned := 28;
   RPI_V2_GPIO_P5_04 : constant unsigned := 29;
   RPI_V2_GPIO_P5_05 : constant unsigned := 30;
   RPI_V2_GPIO_P5_06 : constant unsigned :=
     31;  -- /usr/local/include/bcm2835.h:375

   -- Defines for SPI
   -- GPIO register offsets from BCM2835_SPI0_BASE. Offsets into the SPI
   -- Peripheral block in bytes per 10.5 SPI Register Map Register masks
   -- for SPI0_CS
  --/ \brief bcm2835SPIBitOrder SPI Bit order
  --/ Specifies the SPI data bit ordering for bcm2835_spi_setBitOrder()
  --/< LSB First
  --/< MSB First
   type bcm2835SPIBitOrder is
     (BCM2835_SPI_BIT_ORDER_LSBFIRST, BCM2835_SPI_BIT_ORDER_MSBFIRST);
   pragma Convention
     (C, bcm2835SPIBitOrder);  -- /usr/local/include/bcm2835.h:421

  --/ \brief SPI Data mode
  --/ Specify the SPI data mode to be passed to bcm2835_spi_setDataMode()
  --/< CPOL = 0, CPHA = 0
  --/< CPOL = 0, CPHA = 1
  --/< CPOL = 1, CPHA = 0
  --/< CPOL = 1, CPHA = 1
   type bcm2835SPIMode is
     (BCM2835_SPI_MODE0, BCM2835_SPI_MODE1, BCM2835_SPI_MODE2,
      BCM2835_SPI_MODE3);
   pragma Convention (C, bcm2835SPIMode);  -- /usr/local/include/bcm2835.h:431

  --/ \brief bcm2835SPIChipSelect
  --/ Specify the SPI chip select pin(s)
  --/< Chip Select 0
  --/< Chip Select 1
  --/< Chip Select 2 (ie pins CS1 and CS2 are asserted)
  --/< No CS, control it yourself
   type bcm2835SPIChipSelect is
     (BCM2835_SPI_CS0, BCM2835_SPI_CS1, BCM2835_SPI_CS2, BCM2835_SPI_CS_NONE);
   pragma Convention
     (C, bcm2835SPIChipSelect);  -- /usr/local/include/bcm2835.h:441

  --/ \brief bcm2835SPIClockDivider
  --/ Specifies the divider used to generate the SPI clock from the system clock.
  --/ Figures below give the divider, clock period and clock frequency.
  --/ Clock divided is based on nominal base clock rate of 250MHz
  --/ It is reported that (contrary to the documentation) any even divider may used.
  --/ The frequencies shown for each divider have been confirmed by measurement
  --/< 65536 = 262.144us = 3.814697260kHz
  --/< 32768 = 131.072us = 7.629394531kHz
  --/< 16384 = 65.536us = 15.25878906kHz
  --/< 8192 = 32.768us = 30/51757813kHz
  --/< 4096 = 16.384us = 61.03515625kHz
  --/< 2048 = 8.192us = 122.0703125kHz
  --/< 1024 = 4.096us = 244.140625kHz
  --/< 512 = 2.048us = 488.28125kHz
  --/< 256 = 1.024us = 976.5625MHz
  --/< 128 = 512ns = = 1.953125MHz
  --/< 64 = 256ns = 3.90625MHz
  --/< 32 = 128ns = 7.8125MHz
  --/< 16 = 64ns = 15.625MHz
  --/< 8 = 32ns = 31.25MHz
  --/< 4 = 16ns = 62.5MHz
  --/< 2 = 8ns = 125MHz, fastest you can get
  --/< 0 = 262.144us = 3.814697260kHz, same as 0/65536
   subtype bcm2835SPIClockDivider is unsigned;
   BCM2835_SPI_CLOCK_DIVIDER_65536 : constant unsigned := 0;
   BCM2835_SPI_CLOCK_DIVIDER_32768 : constant unsigned := 32_768;
   BCM2835_SPI_CLOCK_DIVIDER_16384 : constant unsigned := 16_384;
   BCM2835_SPI_CLOCK_DIVIDER_8192  : constant unsigned := 8_192;
   BCM2835_SPI_CLOCK_DIVIDER_4096  : constant unsigned := 4_096;
   BCM2835_SPI_CLOCK_DIVIDER_2048  : constant unsigned := 2_048;
   BCM2835_SPI_CLOCK_DIVIDER_1024  : constant unsigned := 1_024;
   BCM2835_SPI_CLOCK_DIVIDER_512   : constant unsigned := 512;
   BCM2835_SPI_CLOCK_DIVIDER_256   : constant unsigned := 256;
   BCM2835_SPI_CLOCK_DIVIDER_128   : constant unsigned := 128;
   BCM2835_SPI_CLOCK_DIVIDER_64    : constant unsigned := 64;
   BCM2835_SPI_CLOCK_DIVIDER_32    : constant unsigned := 32;
   BCM2835_SPI_CLOCK_DIVIDER_16    : constant unsigned := 16;
   BCM2835_SPI_CLOCK_DIVIDER_8     : constant unsigned := 8;
   BCM2835_SPI_CLOCK_DIVIDER_4     : constant unsigned := 4;
   BCM2835_SPI_CLOCK_DIVIDER_2     : constant unsigned := 2;
   BCM2835_SPI_CLOCK_DIVIDER_1     : constant unsigned :=
     1;  -- /usr/local/include/bcm2835.h:468

  --/ @}
   -- Defines for PWM
   -- Historical name compatibility
  --/ \defgroup init Library initialisation and management
  --/ These functions allow you to intialise and control the bcm2835 library
  --/ @{
  --/ Initialise the library by opening /dev/mem and getting pointers to the
  --/ internal memory for BCM 2835 device registers. You must call this (successfully)
  --/ before calling any other
  --/ functions in this library (except bcm2835_set_debug).
  --/ If bcm2835_init() fails by returning 0,
  --/ calling any other function may result in crashes or other failures.
  --/ Prints messages to stderr in case of errors.
  --/ \return 1 if successful else 0
   function bcm2835_init return int;  -- /usr/local/include/bcm2835.h:523
   pragma Import (C, bcm2835_init, "bcm2835_init");

  --/ Close the library, deallocating any allocated memory and closing /dev/mem
  --/ \return 1 if successful else 0
   function bcm2835_close return int;  -- /usr/local/include/bcm2835.h:527
   pragma Import (C, bcm2835_close, "bcm2835_close");

  --/ Sets the debug level of the library.
  --/ A value of 1 prevents mapping to /dev/mem, and makes the library print out
  --/ what it would do, rather than accessing the GPIO registers.
  --/ A value of 0, the default, causes normal operation.
  --/ Call this before calling bcm2835_init();
  --/ \param[in] debug The new debug level. 1 means debug
   procedure bcm2835_set_debug
     (debug : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:535
   pragma Import (C, bcm2835_set_debug, "bcm2835_set_debug");

  --/ @} // end of init
  --/ \defgroup lowlevel Low level register access
  --/ These functions provide low level register access, and should not generally
  --/ need to be used
  --/
  --/ @{
  --/ Reads 32 bit value from a peripheral address
  --/ The read is done twice, and is therefore always safe in terms of
  --/ manual section 1.3 Peripheral access precautions for correct memory ordering
  --/ \param[in] paddr Physical address to read from. See BCM2835_GPIO_BASE etc.
  --/ \return the value read from the 32 bit register
  --/ \sa Physical Addresses
   function bcm2835_peri_read
     (paddr : access x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:551
   pragma Import (C, bcm2835_peri_read, "bcm2835_peri_read");

  --/ Reads 32 bit value from a peripheral address without the read barrier
  --/ You should only use this when your code has previously called bcm2835_peri_read()
  --/ within the same peripheral, and no other peripheral access has occurred since.
  --/ \param[in] paddr Physical address to read from. See BCM2835_GPIO_BASE etc.
  --/ \return the value read from the 32 bit register
  --/ \sa Physical Addresses
   function bcm2835_peri_read_nb
     (paddr : access x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:560
   pragma Import (C, bcm2835_peri_read_nb, "bcm2835_peri_read_nb");

  --/ Writes 32 bit value from a peripheral address
  --/ The write is done twice, and is therefore always safe in terms of
  --/ manual section 1.3 Peripheral access precautions for correct memory ordering
  --/ \param[in] paddr Physical address to read from. See BCM2835_GPIO_BASE etc.
  --/ \param[in] value The 32 bit value to write
  --/ \sa Physical Addresses
   procedure bcm2835_peri_write
     (paddr : access x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t;
      value : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:569
   pragma Import (C, bcm2835_peri_write, "bcm2835_peri_write");

  --/ Writes 32 bit value from a peripheral address without the write barrier
  --/ You should only use this when your code has previously called bcm2835_peri_write()
  --/ within the same peripheral, and no other peripheral access has occurred since.
  --/ \param[in] paddr Physical address to read from. See BCM2835_GPIO_BASE etc.
  --/ \param[in] value The 32 bit value to write
  --/ \sa Physical Addresses
   procedure bcm2835_peri_write_nb
     (paddr : access x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t;
      value : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:577
   pragma Import (C, bcm2835_peri_write_nb, "bcm2835_peri_write_nb");

  --/ Alters a number of bits in a 32 peripheral regsiter.
  --/ It reads the current valu and then alters the bits deines as 1 in mask,
  --/ according to the bit value in value.
  --/ All other bits that are 0 in the mask are unaffected.
  --/ Use this to alter a subset of the bits in a register.
  --/ The write is done twice, and is therefore always safe in terms of
  --/ manual section 1.3 Peripheral access precautions for correct memory ordering
  --/ \param[in] paddr Physical address to read from. See BCM2835_GPIO_BASE etc.
  --/ \param[in] value The 32 bit value to write, masked in by mask.
  --/ \param[in] mask Bitmask that defines the bits that will be altered in the register.
  --/ \sa Physical Addresses
   procedure bcm2835_peri_set_bits
     (paddr : access x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t;
      value : x86_64_linux_gnu_bits_stdint_uintn_h.uint32_t;
      mask  : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:590
   pragma Import (C, bcm2835_peri_set_bits, "bcm2835_peri_set_bits");

  --/ @} // end of lowlevel
  --/ \defgroup gpio GPIO register access
  --/ These functions allow you to control the GPIO interface. You can set the
  --/ function of each GPIO pin, read the input state and set the output state.
  --/ @{
  --/ Sets the Function Select register for the given pin, which configures
  --/ the pin as Input, Output or one of the 6 alternate functions.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from RPiGPIOPin.
  --/ \param[in] mode Mode to set the pin to, one of BCM2835_GPIO_FSEL_* from \ref bcm2835FunctionSelect
   procedure bcm2835_gpio_fsel
     (pin  : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      mode : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:602
   pragma Import (C, bcm2835_gpio_fsel, "bcm2835_gpio_fsel");

  --/ Sets the specified pin output to
  --/ HIGH.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \sa bcm2835_gpio_write()
   procedure bcm2835_gpio_set
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:608
   pragma Import (C, bcm2835_gpio_set, "bcm2835_gpio_set");

  --/ Sets the specified pin output to
  --/ LOW.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \sa bcm2835_gpio_write()
   procedure bcm2835_gpio_clr
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:614
   pragma Import (C, bcm2835_gpio_clr, "bcm2835_gpio_clr");

  --/ Reads the current level on the specified
  --/ pin and returns either HIGH or LOW. Works whether or not the pin
  --/ is an input or an output.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \return the current level  either HIGH or LOW
   function bcm2835_gpio_lev
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint8_t;  -- /usr/local/include/bcm2835.h:621
   pragma Import (C, bcm2835_gpio_lev, "bcm2835_gpio_lev");

  --/ Event Detect Status.
  --/ Tests whether the specified pin has detected a level or edge
  --/ as requested by bcm2835_gpio_ren(), bcm2835_gpio_fen(), bcm2835_gpio_hen(),
  --/ bcm2835_gpio_len(), bcm2835_gpio_aren(), bcm2835_gpio_afen().
  --/ Clear the flag for a given pin by calling bcm2835_gpio_set_eds(pin);
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \return HIGH if the event detect status for th given pin is true.
   function bcm2835_gpio_eds
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint8_t;  -- /usr/local/include/bcm2835.h:630
   pragma Import (C, bcm2835_gpio_eds, "bcm2835_gpio_eds");

  --/ Sets the Event Detect Status register for a given pin to 1,
  --/ which has the effect of clearing the flag. Use this afer seeing
  --/ an Event Detect Status on the pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_set_eds
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:636
   pragma Import (C, bcm2835_gpio_set_eds, "bcm2835_gpio_set_eds");

  --/ Enable Rising Edge Detect Enable for the specified pin.
  --/ When a rising edge is detected, sets the appropriate pin in Event Detect Status.
  --/ The GPRENn registers use
  --/ synchronous edge detection. This means the input signal is sampled using the
  --/ system clock and then it is looking for a ?011? pattern on the sampled signal. This
  --/ has the effect of suppressing glitches.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_ren
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:645
   pragma Import (C, bcm2835_gpio_ren, "bcm2835_gpio_ren");

  --/ Disable Rising Edge Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_ren
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:649
   pragma Import (C, bcm2835_gpio_clr_ren, "bcm2835_gpio_clr_ren");

  --/ Enable Falling Edge Detect Enable for the specified pin.
  --/ When a falling edge is detected, sets the appropriate pin in Event Detect Status.
  --/ The GPRENn registers use
  --/ synchronous edge detection. This means the input signal is sampled using the
  --/ system clock and then it is looking for a ?100? pattern on the sampled signal. This
  --/ has the effect of suppressing glitches.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_fen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:658
   pragma Import (C, bcm2835_gpio_fen, "bcm2835_gpio_fen");

  --/ Disable Falling Edge Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_fen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:662
   pragma Import (C, bcm2835_gpio_clr_fen, "bcm2835_gpio_clr_fen");

  --/ Enable High Detect Enable for the specified pin.
  --/ When a HIGH level is detected on the pin, sets the appropriate pin in Event Detect Status.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_hen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:667
   pragma Import (C, bcm2835_gpio_hen, "bcm2835_gpio_hen");

  --/ Disable High Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_hen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:671
   pragma Import (C, bcm2835_gpio_clr_hen, "bcm2835_gpio_clr_hen");

  --/ Enable Low Detect Enable for the specified pin.
  --/ When a LOW level is detected on the pin, sets the appropriate pin in Event Detect Status.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_len
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:676
   pragma Import (C, bcm2835_gpio_len, "bcm2835_gpio_len");

  --/ Disable Low Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_len
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:680
   pragma Import (C, bcm2835_gpio_clr_len, "bcm2835_gpio_clr_len");

  --/ Enable Asynchronous Rising Edge Detect Enable for the specified pin.
  --/ When a rising edge is detected, sets the appropriate pin in Event Detect Status.
  --/ Asynchronous means the incoming signal is not sampled by the system clock. As such
  --/ rising edges of very short duration can be detected.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_aren
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:687
   pragma Import (C, bcm2835_gpio_aren, "bcm2835_gpio_aren");

  --/ Disable Asynchronous Rising Edge Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_aren
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:691
   pragma Import (C, bcm2835_gpio_clr_aren, "bcm2835_gpio_clr_aren");

  --/ Enable Asynchronous Falling Edge Detect Enable for the specified pin.
  --/ When a falling edge is detected, sets the appropriate pin in Event Detect Status.
  --/ Asynchronous means the incoming signal is not sampled by the system clock. As such
  --/ falling edges of very short duration can be detected.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_afen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:698
   pragma Import (C, bcm2835_gpio_afen, "bcm2835_gpio_afen");

  --/ Disable Asynchronous Falling Edge Detect Enable for the specified pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
   procedure bcm2835_gpio_clr_afen
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:702
   pragma Import (C, bcm2835_gpio_clr_afen, "bcm2835_gpio_clr_afen");

  --/ Sets the Pull-up/down register for the given pin. This is
  --/ used with bcm2835_gpio_pudclk() to set the  Pull-up/down resistor for the given pin.
  --/ However, it is usually more convenient to use bcm2835_gpio_set_pud().
  --/ \param[in] pud The desired Pull-up/down mode. One of BCM2835_GPIO_PUD_* from bcm2835PUDControl
  --/ \sa bcm2835_gpio_set_pud()
   procedure bcm2835_gpio_pud
     (pud : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:709
   pragma Import (C, bcm2835_gpio_pud, "bcm2835_gpio_pud");

  --/ Clocks the Pull-up/down value set earlier by bcm2835_gpio_pud() into the pin.
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \param[in] on HIGH to clock the value from bcm2835_gpio_pud() into the pin.
  --/ LOW to remove the clock.
  --/ \sa bcm2835_gpio_set_pud()
   procedure bcm2835_gpio_pudclk
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      on  : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:716
   pragma Import (C, bcm2835_gpio_pudclk, "bcm2835_gpio_pudclk");

  --/ Reads and returns the Pad Control for the given GPIO group.
  --/ \param[in] group The GPIO pad group number, one of BCM2835_PAD_GROUP_GPIO_*
  --/ \return Mask of bits from BCM2835_PAD_* from \ref bcm2835PadGroup
   function bcm2835_gpio_pad
     (group : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint32_t;  -- /usr/local/include/bcm2835.h:721
   pragma Import (C, bcm2835_gpio_pad, "bcm2835_gpio_pad");

  --/ Sets the Pad Control for the given GPIO group.
  --/ \param[in] group The GPIO pad group number, one of BCM2835_PAD_GROUP_GPIO_*
  --/ \param[in] control Mask of bits from BCM2835_PAD_* from \ref bcm2835PadGroup
   procedure bcm2835_gpio_set_pad
     (group   : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      control : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:726
   pragma Import (C, bcm2835_gpio_set_pad, "bcm2835_gpio_set_pad");

  --/ Delays for the specified number of milliseconds.
  --/ Uses nanosleep(), and therefore does not use CPU until the time is up.
  --/ \param[in] millis Delay in milliseconds
   procedure bcm2835_delay
     (millis : unsigned);  -- /usr/local/include/bcm2835.h:731
   pragma Import (C, bcm2835_delay, "bcm2835_delay");

  --/ Delays for the specified number of microseconds.
  --/ Uses nanosleep(), and therefore does not use CPU until the time is up.
  --/ However, you are at the mercy of nanosleep(). From the manual for nanosleep:
  --/ If the interval specified in req is not an exact multiple of the granularity
  --/ underlying  clock  (see  time(7)),  then  the  interval will be
  --/ rounded up to the next multiple.  Furthermore,  after  the  sleep  com-
  --/ pletes,  there may still be a delay before the CPU becomes free to once
  --/ again execute the calling thread.
  --/ For times less than about 450 microseconds, uses a busy wait on a high resolution timer.
  --/ It is reported that a delay of 0 microseconds on RaspberryPi will in fact
  --/ result in a dleay of about 80 microseconds. Your mileage may vary.
  --/ \param[in] micros Delay in microseconds
   procedure bcm2835_delayMicroseconds
     (micros : unsigned);  -- /usr/local/include/bcm2835.h:745
   pragma Import (C, bcm2835_delayMicroseconds, "bcm2835_delayMicroseconds");

  --/ Sets the output state of the specified pin
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \param[in] on HIGH sets the output to HIGH and LOW to LOW.
   procedure bcm2835_gpio_write
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      on  : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:750
   pragma Import (C, bcm2835_gpio_write, "bcm2835_gpio_write");

  --/ Sets the Pull-up/down mode for the specified pin. This is more convenient than
  --/ clocking the mode in with bcm2835_gpio_pud() and bcm2835_gpio_pudclk().
  --/ \param[in] pin GPIO number, or one of RPI_GPIO_P1_* from \ref RPiGPIOPin.
  --/ \param[in] pud The desired Pull-up/down mode. One of BCM2835_GPIO_PUD_* from bcm2835PUDControl
   procedure bcm2835_gpio_set_pud
     (pin : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      pud : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:756
   pragma Import (C, bcm2835_gpio_set_pud, "bcm2835_gpio_set_pud");

  --/ @}
  --/ \defgroup spi SPI access
  --/ These functions let you use SPI0 (Serial Peripheral Interface) to
  --/ interface with an external SPI device.
  --/ @{
  --/ Start SPI operations.
  --/ Forces RPi SPI0 pins P1-19 (MOSI), P1-21 (MISO), P1-23 (CLK), P1-24 (CE0) and P1-26 (CE1)
  --/ to alternate function ALT0, which enables those pins for SPI interface.
  --/ You should call bcm2835_spi_end() when all SPI funcitons are complete to return the pins to
  --/ their default functions
  --/ \sa  bcm2835_spi_end()
   procedure bcm2835_spi_begin;  -- /usr/local/include/bcm2835.h:771
   pragma Import (C, bcm2835_spi_begin, "bcm2835_spi_begin");

  --/ End SPI operations.
  --/ SPI0 pins P1-19 (MOSI), P1-21 (MISO), P1-23 (CLK), P1-24 (CE0) and P1-26 (CE1)
  --/ are returned to their default INPUT behaviour.
   procedure bcm2835_spi_end;  -- /usr/local/include/bcm2835.h:776
   pragma Import (C, bcm2835_spi_end, "bcm2835_spi_end");

  --/ Sets the SPI bit order
  --/ NOTE: has no effect. Not supported by SPI0.
  --/ Defaults to
  --/ \param[in] order The desired bit order, one of BCM2835_SPI_BIT_ORDER_*,
  --/ see \ref bcm2835SPIBitOrder
   procedure bcm2835_spi_setBitOrder
     (order : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:783
   pragma Import (C, bcm2835_spi_setBitOrder, "bcm2835_spi_setBitOrder");

  --/ Sets the SPI clock divider and therefore the
  --/ SPI clock speed.
  --/ \param[in] divider The desired SPI clock divider, one of BCM2835_SPI_CLOCK_DIVIDER_*,
  --/ see \ref bcm2835SPIClockDivider
   procedure bcm2835_spi_setClockDivider
     (divider : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint16_t);  -- /usr/local/include/bcm2835.h:789
   pragma Import
     (C, bcm2835_spi_setClockDivider, "bcm2835_spi_setClockDivider");

  --/ Sets the SPI data mode
  --/ Sets the clock polariy and phase
  --/ \param[in] mode The desired data mode, one of BCM2835_SPI_MODE*,
  --/ see \ref bcm2835SPIMode
   procedure bcm2835_spi_setDataMode
     (mode : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:795
   pragma Import (C, bcm2835_spi_setDataMode, "bcm2835_spi_setDataMode");

  --/ Sets the chip select pin(s)
  --/ When an bcm2835_spi_transfer() is made, the selected pin(s) will be asserted during the
  --/ transfer.
  --/ \param[in] cs Specifies the CS pins(s) that are used to activate the desired slave.
  --/   One of BCM2835_SPI_CS*, see \ref bcm2835SPIChipSelect
   procedure bcm2835_spi_chipSelect
     (cs : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:802
   pragma Import (C, bcm2835_spi_chipSelect, "bcm2835_spi_chipSelect");

  --/ Sets the chip select pin polarity for a given pin
  --/ When an bcm2835_spi_transfer() occurs, the currently selected chip select pin(s)
  --/ will be asserted to the
  --/ value given by active. When transfers are not happening, the chip select pin(s)
  --/ return to the complement (inactive) value.
  --/ \param[in] cs The chip select pin to affect
  --/ \param[in] active Whether the chip select pin is to be active HIGH
   procedure bcm2835_spi_setChipSelectPolarity
     (cs     : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t;
      active : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint8_t);  -- /usr/local/include/bcm2835.h:811
   pragma Import
     (C, bcm2835_spi_setChipSelectPolarity,
      "bcm2835_spi_setChipSelectPolarity");

  --/ Transfers one byte to and from the currently selected SPI slave.
  --/ Asserts the currently selected CS pins (as previously set by bcm2835_spi_chipSelect)
  --/ during the transfer.
  --/ Clocks the 8 bit value out on MOSI, and simultaneously clocks in data from MISO.
  --/ Returns the read data byte from the slave.
  --/ Uses polled transfer as per section 10.6.1 of the BCM 2835 ARM Peripherls manual
  --/ \param[in] value The 8 bit data byte to write to MOSI
  --/ \return The 8 bit byte simultaneously read from  MISO
  --/ \sa bcm2835_spi_transfern()
   function bcm2835_spi_transfer
     (value : x86_64_linux_gnu_bits_stdint_uintn_h.uint8_t)
      return x86_64_linux_gnu_bits_stdint_uintn_h
     .uint8_t;  -- /usr/local/include/bcm2835.h:822
   pragma Import (C, bcm2835_spi_transfer, "bcm2835_spi_transfer");

  --/ Transfers any number of bytes to and from the currently selected SPI slave.
  --/ Asserts the currently selected CS pins (as previously set by bcm2835_spi_chipSelect)
  --/ during the transfer.
  --/ Clocks the len 8 bit bytes out on MOSI, and simultaneously clocks in data from MISO.
  --/ The data read read from the slave is placed into rbuf. rbuf must be at least len bytes long
  --/ Uses polled transfer as per section 10.6.1 of the BCM 2835 ARM Peripherls manual
  --/ \param[in] tbuf Buffer of bytes to send.
  --/ \param[out] rbuf Received bytes will by put in this buffer
  --/ \param[in] len Number of bytes in the tbuf buffer, and the number of bytes to send/received
  --/ \sa bcm2835_spi_transfer()
   procedure bcm2835_spi_transfernb
     (tbuf : Interfaces.C.Strings.chars_ptr;
      rbuf : Interfaces.C.Strings.chars_ptr;
      len  : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:834
   pragma Import (C, bcm2835_spi_transfernb, "bcm2835_spi_transfernb");

  --/ Transfers any number of bytes to and from the currently selected SPI slave
  --/ using bcm2835_spi_transfernb.
  --/ The returned data from the slave replaces the transmitted data in the buffer.
  --/ \param[in,out] buf Buffer of bytes to send. Received bytes will replace the contents
  --/ \param[in] len Number of bytes int eh buffer, and the number of bytes to send/received
  --/ \sa bcm2835_spi_transfer()
   procedure bcm2835_spi_transfern
     (buf : Interfaces.C.Strings.chars_ptr;
      len : x86_64_linux_gnu_bits_stdint_uintn_h
        .uint32_t);  -- /usr/local/include/bcm2835.h:842
   pragma Import (C, bcm2835_spi_transfern, "bcm2835_spi_transfern");

  --/ @}
  --/ @example blink.c
  --/ Blinks RPi GPIO pin 11 on and off
  --/ @example input.c
  --/ Reads the state of an RPi input pin
  --/ @example event.c
  --/ Shows how to use event detection on an input pin
  --/ @example spi.c
  --/ Shows how to use SPI interface to transfer a byte to and from an SPI device
  --/ @example spin.c
  --/ Shows how to use SPI interface to transfer a number of bytes to and from an SPI device
end bcm2835_h;
