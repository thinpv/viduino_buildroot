setenv bootargs console=ttyS1,115200 panic=5 rootwait root=/dev/mmcblk0p2 rw
load mmc 0:1 0x80C00000 suniv-f1c100s-viduino-uno.dtb
load mmc 0:1 0x80008000 zImage
bootz 0x80008000 - 0x80C00000

