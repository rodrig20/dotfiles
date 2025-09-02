#!/bin/bash

sudo pacman -S --needed gnome-keyring

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

sudo cp "$SCRIPT_DIR/aux/files/sddm" "/etc/pam.d/sddm"
