#!/bin/bash
set -e

echo "=== Optional: Zsh Setup ==="

# Check if zsh is already installed
if command -v zsh &> /dev/null; then
    echo "Zsh is already installed: $(zsh --version)"
else
    sudo apt install -y zsh
fi

# Install oh-my-zsh (skip if already installed)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh-my-zsh is already installed, skipping"
fi

# Install useful oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Set zsh as default shell (optional)
# chsh -s $(which zsh)

echo "=== Zsh installed ==="
echo "Log out and back in to use zsh, or run: exec zsh"
echo "To set as default: chsh -s \$(which zsh)"
