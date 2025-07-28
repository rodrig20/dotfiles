#!/bin/bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SUBDIR="$SCRIPT_DIR/aux"

# Run Scripts
bash "$SUBDIR/install_packages.sh"
bash "$SUBDIR/create_sym.sh"
bash "$SUBDIR/sddm.sh"
