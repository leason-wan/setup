#!/usr/bin/env bash
set -e

# Install oh-my-zsh
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

# tmux
#
# ~/.tmux.conf >>
# set-option -g mouse on # enable mouse
#
sudo apt install -y tmux

# Create ssh key
ssh-keygen -t rsa

# Install vscode
sudo snap install --classic code
