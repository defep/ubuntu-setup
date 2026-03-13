#!/bin/bash
set -e

echo "=== Development Tools ==="

# Git config (customize these)
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
git config --global init.defaultBranch main

# Install VS Code
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main"
sudo apt update
sudo apt install -y code

# Install Docker
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER

# Install Node.js (via nvm - recommended)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts

# Install Python and pip
sudo apt install -y python3 python3-pip python3-venv

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Go
sudo apt install -y golang-go

# Install lazydocker (Docker TUI)
sudo wget https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_linux_amd64.tar.gz -O /tmp/lazydocker.tar.gz
sudo tar -xzf /tmp/lazydocker.tar.gz -C /usr/local/bin lazydocker
rm /tmp/lazydocker.tar.gz

echo "=== Development tools installed ==="
echo "Log out and back in for Docker group to take effect"
