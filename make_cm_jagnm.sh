./dtbToolCM -2 -o ./arch/arm/boot/dt.img -s 2048 -p ./scripts/dtc/ ./arch/arm/boot/ && find -name "*.ko" -exec cp -f '{}'  ./RAMDISK/CM12.1/D722/system/lib/modules/ \; && cp -f ./arch/arm/boot/zImage ./RAMDISK/CM12.1/D722/split_img/zImage && mv -f ./arch/arm/boot/dt.img ./RAMDISK/CM12.1/D722/split_img/dt.img && cd RAMDISK/CM12.1/D722/ && ./bump.py boot.img && ./repackimg.sh && cd ../../..
exec bash
