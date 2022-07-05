
## Viduino Uno Buildroot

### Build Viduino Uno Buildroot
To build buildroot for Viduino Uno, follow these next instructions:

#### 1. Download source code
```
git clone https://github.com/thinpv/viduino_buildroot.git
```
#### 2. Define config:

Using SPI flash
```
make viduino_uno_flash_defconfig
```
Using SD card
```
make viduino_uno_tf_defconfig
```
#### 3. Build
```
make
```
After finishing, img file is saved in output/images
#### 4. Burn img
Using SPI flash
- First, connect Viduino Uno with pc with FEL mode
- Then, run command
```
sudo sunxi-fel -p spiflash-write 0 output/images/flash.bin
```

Using SD card
- Use balenaEtcher to burn file output/images/sdcard.img
