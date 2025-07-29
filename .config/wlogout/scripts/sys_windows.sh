#!/bin/bash

windows_title=$(grep -i windows /boot/grub/grub.cfg | cut -d "'" -f 2)
grub-reboot "$windows_title"
reboot
