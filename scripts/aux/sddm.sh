#!/bin/bash

# Get the directory where this script resides
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define clone directory
CLONE_DIR="sddm-theme-tokyo-night"

echo -e "\e[32mCloning repo...\e[0m"

# Remove clone directory if it exists
if [ -d "$CLONE_DIR" ]; then
    echo -e "\e[31mRemoving existing directory $CLONE_DIR...\e[0m"
    rm -rf "$CLONE_DIR"
fi

# Clone the AUR package for the SDDM Tokyo Night theme
git clone https://aur.archlinux.org/sddm-theme-tokyo-night.git
cd "$CLONE_DIR"
makepkg -Ccsi

echo -e "\e[34mInstalling Theme\e[0m"

# Copy sddm.conf from the 'files' folder relative to this script
sudo cp "$SCRIPT_DIR/files/sddm.conf" /etc/sddm.conf

# Enable and start SDDM service
sudo systemctl enable sddm --now
