#!/bin/bash

# Get the directory where this script resides
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "\e[32mCloning repo...\e[0m"

# Clone the AUR package for the SDDM Lunar Purple
sudo git clone --depth=1 https://github.com/rodrig20/lunar-purple-sddm.git /usr/share/sddm/themes/lunar-purple-sddm

echo -e "\e[34mInstalling Theme\e[0m"

# Copy sddm.conf from the 'files' folder relative to this script
sudo cp "$SCRIPT_DIR/files/sddm.conf" /etc/sddm.conf

# Enable and start SDDM service
sudo systemctl enable sddm
