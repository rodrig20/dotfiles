#!/bin/bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SUBDIR="$SCRIPT_DIR/aux"

# Executa os scripts um a um
bash "$SUBDIR/install_packages.sh"
bash "$SUBDIR/create_sym.sh"
bash "$SUBDIR/sddm.sh"
