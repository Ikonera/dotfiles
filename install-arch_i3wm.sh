#!/usr/bin/env bash

set -e

echo "For the program to run properly, installing text editor..." # feel free to change your TE
pacman -S neovim --noconfirm

echo "Saving newest pacman mirrors..."
reflector --sort rate --protocol https --country France --age 12 --save /etc/pacman.d/mirrorlist
echo "Newest pacman mirrors saved !"

echo "Installing first packages with pacstrap..."
pacstrap -K --color=always --noconfirm /mnt linux linux-headers linux-firmware base-devel git sof-firmware networkmanager network-manager-applet wpa_supplicant systemd-sysvcompat refind sddm i3wm curl wget pavucontrol pulseaudio pulseaudio-jack pulseaudio-bluetooth
echo "Pacstrap packages installation successfull !"

echo "Generating fstab..."
genfstab -U /mnt >> /mnt/etc/fstab
echo "Fstab generation successfull !"

echo "Setting localtime..."
echo "Enter your Region and City (format 'Region/City') : "
read LOCALTIME
ln -sf /usr/share/zoneinfo/${LOCALTIME} /etc/localtime
echo "Localtime set !"

echo "Sync hardware clock to UTC..."
hwclock --systohc
echo "Hardware clock synced !"

echo "Set your default locales. Launching text editor..."
sleep 2
nvim /etc/locale.gen

echo "Creating locale.conf..."
echo "Enter your locale : "
read LOCALE
echo "LANG=${LOCALE}" > /etc/locale.conf
echo "locale.conf created !"

echo "Creating vconsole.conf..."
echo "Enter your keyboard layout : "
read KEYBOARD_LAYOUT
echo "KEYMAP=${KEYBOARD_LAYOUT}" > /etc/vconsole.conf
echo "vconsole.conf created !"

echo "Creating your hostname..."
echo "Enter your system's hostname : "
read HOSTNAME
echo "${HOSTNAME}" > /etc/hostname
echo "hostname created !"

echo "Initializing hosts"
echo -e "127.0.0.1\\tlocalhost\\n::1\\t\\tlocalhost\\n127.0.1.1\\t${HOSTNAME}.localdomain\\t${HOSTNAME}" > /etc/hosts
echo "hosts created !"

echo "Creating initramfs..."
mkinitcpio -P linux # change your kernel if custom !
echo "initramfs created !"

echo "Change your root password..."
passwd

echo "Adding new user account..."
echo "Enter your username : "
read USERNAME
useradd -m ${USERNAME}
echo "Enter password for the new user account :"
passwd ${USERNAME}

echo "Enabling wheel group..."
EDITOR=nvim visudo
echo "wheel group enabled !"

echo "You can now exit arch-chroot and reboot your machine !"
