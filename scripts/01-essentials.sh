#!/bin/bash
set -e

echo "=== Essential Tools ==="

# Update package list
sudo apt update

# Install basic utilities
sudo apt install -y \
    curl \
    wget \
    git \
    unzip \
    zip \
    htop \
    tmux \
    tree \
    jq \
    silversearcher-ag \
    flameshot

# Install kitty terminal
sudo apt install -y kitty

# Install gImageReader (OCR tool)
sudo apt install -y gimagereader tesseract-ocr tesseract-ocr-eng

# Install fonts
sudo apt install -y \
    fonts-firacode \
    fonts-jetbrains-mono

# Set kitty as default terminal (optional)
# sudo update-alternatives --set x-terminal-emulator /usr/bin/kitty

echo "=== Essentials installed ==="
