#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Installing required packages..."
sudo pacman -S --needed qt5ct qt5-wayland qt6ct kdeglobals lxappearance kvantum

echo "Installing icon theme..."
ICON_TMP_DIR="/tmp/new_icon_theme"
rm -rf "$ICON_TMP_DIR"
git clone --depth=1 https://github.com/vinceliuice/Vimix-icon-theme.git "$ICON_TMP_DIR"
cd "$ICON_TMP_DIR"
./install.sh amethyst
cd -
rm -rf "$ICON_TMP_DIR"

echo "Installing lunar-purple SDDM theme..."
sudo rm -rf /usr/share/sddm/themes/lunar-purple-sddm
sudo git clone --depth=1 https://github.com/rodrig20/lunar-purple-sddm.git /usr/share/sddm/themes/lunar-purple-sddm

echo "Configuring SDDM to use lunar-purple theme..."

echo -e "\nTo activate the lunar-purple SDDM theme, add or update the following in your /etc/sddm.conf:\n"
echo "[Theme]"
echo "Current=lunar-purple-sddm"

echo "Done! Please reboot to apply changes."
