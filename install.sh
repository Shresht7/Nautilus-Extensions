#!/bin/bash

# This script installs Nautilus extensions and scripts to the appropriate directories.

set -e
set -u
set -o pipefail

echo "Starting Nautilus Extensions and Scripts installation..."

# Define target directories
NAUTILUS_SCRIPTS_DIR="$HOME/.local/share/nautilus/scripts"
NAUTILUS_EXTENSIONS_DIR="$HOME/.local/share/nautilus-python/extensions"

# Create target directories if they don't exist
echo "Ensuring target directories exist..."
mkdir -p "$NAUTILUS_SCRIPTS_DIR"
mkdir -p "$NAUTILUS_EXTENSIONS_DIR"
echo "Target directories checked."

# Copy scripts
echo "Copying Nautilus scripts..."
if [ -d "./scripts" ]; then
    cp -r ./scripts/* "$NAUTILUS_SCRIPTS_DIR/"
    echo "Nautilus scripts copied."
    
    # Make scripts executable
    echo "Making Nautilus scripts executable..."
    find "$NAUTILUS_SCRIPTS_DIR" -type f -exec chmod +x {} +
    echo "Nautilus scripts made executable."
else
    echo "No 'scripts' directory found. Skipping script installation."
fi

# Copy extensions
echo "Copying Nautilus extensions..."
if [ -d "./extensions" ]; then
    cp ./extensions/*.py "$NAUTILUS_EXTENSIONS_DIR/"
    echo "Nautilus extensions copied."
else
    echo "No 'extensions' directory found. Skipping extension installation."
fi

echo "Installation complete!"
echo "Please restart Nautilus for changes to take effect."
