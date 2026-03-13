#!/bin/bash
set -e

echo "=== Extras ==="

# Chrome
wget -q -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y /tmp/chrome.deb
rm /tmp/chrome.deb

# Slack
sudo snap install slack --classic

# Discord
# sudo snap install discord

# Postman
sudo snap install postman

# Rectangle (window manager) - only on macOS
# sudo snap install rectangle

# Install Starship prompt (works on any shell)
curl -sS https://starship.rs/install.sh | sh

# Install multimedia and graphics tools
sudo apt install -y gimp inkscape vlc

# System utilities
sudo apt install -y bleachbit variety

# Install zsh and oh-my-zsh (optional) - see also 04-optional-zsh.sh
# sudo apt install -y zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "=== Extras installed ==="
