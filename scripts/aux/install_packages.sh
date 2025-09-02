#!/bin/bash

echo -e "\e[34mInstalling packages with pacman...\e[0m"

sudo pacman -S --needed \
    git \
    micro \
    pacman-contrib \
    openssh \
\
    hyprland \
    hyprpaper \
    hyprlock \
    hypridle \
    hyprshot \
    hyprpicker \
    waybar \
\
    ttf-font-awesome \
    ttf-fira-sans \
    ttf-fira-code \
\
    brightnessctl \
    sddm \
\
    bluez \
    bluez-utils \
    blueman \
    pavucontrol \
    networkmanager \
\
    ghostty \
    dolphin


if ! command -v yay &> /dev/null; then
    echo -e "\e[31myay is not installed. Installing yayn...\e[0m"

	YAY_TEMP_DIR="$HOME/yay-temp"

	mkdir -p "$YAY_TEMP_DIR"
    cd "$YAY_TEMP_DIR"

    git clone https://aur.archlinux.org/yay.git .
	makepkg -si
	cd "$HOME"

	 rm -rf "$YAY_TEMP_DIR"
else
   	echo -e "\e[32myay is already installed\e[0m"

fi


echo -e "\e[34mInstalling packages with yay...\e[0m"
yay -S --needed \
	zen-browser-bin \
	checkupdates-with-aur \
	ttf-firacode-nerd \
	wlogout
