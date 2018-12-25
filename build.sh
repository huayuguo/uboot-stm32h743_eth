make mrproper ARCH=arm CROSS_COMPILE=arm-none-eabi-

make ARCH=arm stm32h743-eval_defconfig CROSS_COMPILE=arm-none-eabi-

cp stm32h743-uboot.config .config

make ARCH=arm CROSS_COMPILE=arm-none-eabi- -j4
