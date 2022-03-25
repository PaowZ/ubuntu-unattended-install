#!/bin/bash

if [ $# -eq 0 ]; then
	echo "No target usb supplied"
	exit 1
fi

file="ubuntu-desktop-unattended-install.iso"

#if [ "$(whoami)" != "root" ]; then
#    echo "You must be root to do this"
#    su -c "$0 $*"
#    exit
#fi

device=$1

sudo echo "***** ISO onto USB WRITER *****"
read -p "... about to write on /dev/${device}, continue ??" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    exit 1
fi
echo
echo "... writing to /dev/${device}"

sudo umount -q /dev/${device}*
sudo dd if=$file of=/dev/${device} oflag=direct bs=2M status=progress conv=fsync

beep
beep
beep
beep
beep
beep
