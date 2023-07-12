build:
  nasm boot/boot.s -f bin -o img/boot.bin
  cp img/boot.bin img/boot.img
run:
  qemu-system-i386 -drive format=raw,file=img/boot.img