make mrproper ARCH=arm CROSS_COMPILE=arm-none-eabi-
make ARCH=arm CROSS_COMPILE=arm-none-eabi- zImage
make ARCH=arm CROSS_COMPILE=arm-none-eabi- dtbs
cp ./arch/arm/boot/zImage .
cp ./arch/arm/boot/dts/stm32h743i-eval.dtb . 
mkimage -n 'linux' -A arm -O linux -T kernel -C none -a 0xc1000000 -e 0xc1000000 -d zImage uImage
