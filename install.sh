#!/bin/bash

# Gist ID dan informasi script
GIST_ID="10994a29f86ec25f7d9c0b231ecae5ba"
INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="dotnet-ui"

# Pilih metode clone (SSH atau HTTPS)
echo "Choose clone method:"
echo "1) SSH (Requires GitHub SSH key)"
echo "2) HTTPS (Public access)"
read -p "Enter choice (1/2): " choice

if [[ "$choice" == "1" ]]; then
    GIST_URL="git@gist.github.com:$GIST_ID.git"
elif [[ "$choice" == "2" ]]; then
    GIST_URL="https://gist.github.com/$GIST_ID.git"
else
    echo "Invalid choice. Exiting..."
    exit 1
fi

# Clone Gist
git clone "$GIST_URL" || {
    echo "Failed to clone Gist"
    exit 1
}

# Masuk ke folder hasil clone
cd "$GIST_ID" || {
    echo "Failed to enter directory"
    exit 1
}

# Pindahkan script ke /usr/local/bin/
sudo mv "$SCRIPT_NAME.sh" "$INSTALL_DIR/$SCRIPT_NAME" || {
    echo "Failed to move script"
    exit 1
}

# Beri izin eksekusi
sudo chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

# Kembali ke direktori sebelumnya
cd ..

# Hapus folder hasil clone
rm -rf "$GIST_ID"

# Beri pesan sukses
echo "Installation complete. Try running: $SCRIPT_NAME"
