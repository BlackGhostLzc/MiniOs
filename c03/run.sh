#!/bin/bash 
set -x
echo "run minios in bochs simulator"
BOCHSPATH="/home/blackghost/Desktop/bochs"

nasm mbr.S -o mbr.elf
nasm loader.S -o loader.elf

dd if=mbr.elf of=hd60M.img bs=512 count=1 conv=notrunc
dd if=loader.elf of=hd60M.img bs=512 count=1 seek=2 conv=notrunc

${BOCHSPATH}/bin/bochs -f bochsrc.disk

