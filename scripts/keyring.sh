#!/bin/bash

sudo pacman -S --needed gnome-keyring

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

cp "$SCRIPT_DIR/aux/files/" "/etc/pam.d/sddm"
