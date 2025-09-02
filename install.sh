#!/bin/bash

set -e

# Resolve absolute path of this script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_PATH="$SCRIPT_DIR/scripts"

bash "$SCRIPTS_PATH/arch_setup.sh"
bash "$SCRIPTS_PATH/add_themes.sh"
bash "$SCRIPTS_PATH/keyring.sh"