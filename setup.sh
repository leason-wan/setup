#!/usr/bin/env bash
set -e

# Install zsh
echo "start install zsh"
sudo apt install -y zsh
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

# Install nvm
echo "start install nvm"
sh -c "$(curl -fsSL https://gitee.com/mirrors/nvm/raw/master/install.sh)"
nvm -v

# Install Node.js
echo "start install nodejs"
nvm install stable
node -v

# Install yarn
echo "start install yarn"
npm i yarn -g
echo "finish install yarn"

# Create ssh key
ssh-keygen -t rsa

# Install vscode
sudo snap install --classic code
