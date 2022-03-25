#!/bin/bash
#mount iso file
mkdir -p /mnt/iso
mount -o loop ubuntu-20.04.4-desktop-amd64.iso /mnt/iso

#copy content to tmp folder
mkdir -p tmp
cp -rT /mnt/iso tmp/



