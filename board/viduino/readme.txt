Intro
=====

This directory contains a buildroot configuration for building a
Viduino Uno.

How to build it
===============

Configure Buildroot
-------------------

  $ make viduino_uno_defconfig

Build the rootfs
----------------

Note: you will need to have access to the network, since Buildroot
will download the packages' sources.

You may now build your rootfs with:

  $ make

(This may take a while, consider getting yourself a coffee ;-) )

Result of the build
-------------------

After building, you should obtain this tree:

    output/images/
    +-- boot.scr
    +-- boot.vfat
    +-- rootfs.ext2
    +-- rootfs.ext4 -> rootfs.ext2
    +-- rootfs.tar
    +-- sdcard.img
    +-- flash.bin
    +-- suniv-f1c100s-viduino-uno.dtb
    +-- u-boot.bin
    +-- u-boot-sunxi-with-spl.bin
    `-- zImage

How to write the SD card
========================

Once the build process is finished you will have an image called
"sdcard.img" in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd if=output/images/sdcard.img of=/dev/sdX

Alternatively, you can use the Etcher graphical tool to burn the image
to the SD card safely and on any platform:

https://etcher.io/

Once the SD card is burned, insert it into your Viduino Uno board,
and power it up. Your new system should come up now and start a
console on the UART1 serial port.

How to write the SPI flash
========================

  $ sudo sunxi-fel -p spiflash-write 0 output/images/flash.bin


