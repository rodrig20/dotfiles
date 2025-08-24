#!/bin/bash

set -e

# Resolve absolute path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_PATH="$SCRIPT_DIR/scripts"

# --- Functions ---

run_base_install() {
    echo "Running base Arch setup..."
    bash "$SCRIPTS_PATH/arch_setup.sh"
}

run_keyring() {
    echo "Setting up keyring..."
    bash "$SCRIPTS_PATH/keyring.sh"
}

run_sddm() {
    echo "Setting up SDDM..."
    bash "$SCRIPTS_PATH/sddm.sh"
}

run_theme() {
    echo "Setting up system theme..."
    bash "$SCRIPTS_PATH/add_themes.sh"
}

print_help() {
    echo "Dotfiles Installer"
    echo
    echo "Usage:"
    echo "  ./install.sh          Run base setup only"
    echo "  ./install.sh --full   Run full setup (base + keyring + SDDM + theme)"
    echo
    exit 1
}

# --- Entry Point ---

case "$1" in
    "" )
        run_base_install
        ;;
    --full )
        run_base_install
        run_keyring
        run_sddm
        run_theme
        ;;
    * )
        echo "❌ Unknown option: $1"
        echo
        print_help
        ;;
esac


# Add "password-store": "gnome-libsecret", to argv.json on .vscode folder
