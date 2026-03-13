#!/bin/bash
set -e

echo "=== Optional: Zsh Setup ==="

# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install useful oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Set zsh as default shell (optional)
# chsh -s $(which zsh)

echo "=== Zsh installed ==="
echo "Log out and back in to use zsh, or run: exec zsh"
echo "To set as default: chsh -s \$(which zsh)"
