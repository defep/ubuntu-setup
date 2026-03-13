#!/bin/bash
set -e

echo "=== Development Tools ==="

# Setup Git config
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
if [ -f "$SCRIPT_DIR/../configs/.gitconfig" ]; then
    read -p "Enter your Git name: " GIT_NAME
    read -p "Enter your Git email: " GIT_EMAIL
    
    sed "s/YOUR_NAME/$GIT_NAME/; s/YOUR_EMAIL/$GIT_EMAIL/" "$SCRIPT_DIR/../configs/.gitconfig" > ~/.gitconfig
    echo "Git config created"
fi

# Install VS Code
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/code stable main"
sudo apt update
sudo apt install -y code

# Install Docker
sudo apt install -y docker.io docker-compose
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

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
mkdir -p ~/.local/bin
wget -q https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_linux_amd64.tar.gz -O /tmp/lazydocker.tar.gz
tar -xzf /tmp/lazydocker.tar.gz -C ~/.local/bin lazydocker
rm /tmp/lazydocker.tar.gz
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo "=== Development tools installed ==="
echo "Log out and back in for Docker group to take effect"
