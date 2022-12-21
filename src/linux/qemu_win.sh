#!/bin/sh
WINIMG=~/vm/Win10_1803_English_x64.iso
VIRTIMG=~/vm/virtio-win-0.1.149.iso
qemu-system-x86_64 --enable-kvm -drive driver=raw,file=~/vm/win10.img,if=virtio -m 6144 \
-net nic,model=virtio -net user -cdrom ${WINIMG} \
-drive file=${VIRTIMG},index=3,media=cdrom \
-rtc base=localtime,clock=host -smp cores=4,threads=8 \
-usb -device usb-tablet \
-net user,smb="$HOME"