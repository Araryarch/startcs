#!/bin/bash

# Direktori instalasi dan nama script
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="dotnet-ui"

# Periksa apakah script ada
if [[ ! -f "$INSTALL_DIR/$SCRIPT_NAME" ]]; then
    echo "Error: $SCRIPT_NAME not found in $INSTALL_DIR"
    exit 1
fi

# Hapus script
sudo rm "$INSTALL_DIR/$SCRIPT_NAME" || {
    echo "Failed to remove $SCRIPT_NAME"
    exit 1
}

# Beri pesan sukses
echo "$SCRIPT_NAME has been uninstalled successfully."
