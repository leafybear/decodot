#!/bin/bash

## give hostname and new username as arguments

pacman -S polkit wpa_supplicant wpa_actiond dialog terminus-font intel-ucode

echo "------------------------------"
echo "Setting Locale."
echo "en_GB.UTF-8 UTF-8" > /etc/locale-gen.conf
locale-gen
echo LANG=en_GB.UTF-8 > /etc/locale.conf

echo "------------------------------"
echo "Setting font."
setfont ter-v24n
echo FONT=ter-v24n > /etc/vconsole.conf

echo "------------------------------"
echo "Setting hostname."
echo $1 > /etc/hostname
nano /etc/hosts

echo "------------------------------"
echo "Enabling sudoers group."
nano /etc/sudoers

echo "------------------------------"
echo "Setting timezone."
ln -sf /usr/share/zoneinfo/Australia/Sydney /etc/localtime

echo "------------------------------"
echo "Setting sane network names."
ln -s /dev/null /etc/udev/rules.d/80-net-setup-link.rules

echo "------------------------------"
echo "Creating first user."
useradd -m -G wheel -s /bin/bash $2
passwd $2