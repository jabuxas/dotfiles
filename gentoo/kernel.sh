#!/usr/bin/env bash

# Script made for building the kernel with initramfs
# It will select the kernel selected with "eselect kernel"
cd /usr/src/linux && make clean && make -j6 && make modules_install install && \
    dracut --hostonly --force --lz4 && \
    grub-mkconfig -o /boot/grub/grub.cfg && emerge @module-rebuild
