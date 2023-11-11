#!/bin/bash 
set -x
echo "run"
BOCHSPATH="/home/blackghost/Desktop/bochs"

dd if=./mbr.bin of=./hd60M.img bs=512 count=1 conv=notrunc

${BOCHSPATH}/bin/bochs -f bochsrc.disk

