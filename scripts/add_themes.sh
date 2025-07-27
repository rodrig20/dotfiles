#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Installing required packages..."
sudo pacman -S --needed qt5ct qt5-wayland qt6ct kdeglobals lxappearance

echo "Installing icon theme..."
ICON_TMP_DIR="/tmp/new_icon_theme"
rm -rf "$ICON_TMP_DIR"
git clone --depth=1 https://github.com/vinceliuice/Vimix-icon-theme.git "$ICON_TMP_DIR"
cd "$ICON_TMP_DIR"
./install.sh amethyst
cd -
rm -rf "$ICON_TMP_DIR"

echo "Done! Please reboot to apply changes."
