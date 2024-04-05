#!/usr/bin/env bash
set -e

# Install oh-my-zsh
echo "start install zsh"
sudo apt install -y zsh
bash -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"

# Install nvm
echo "start install nvm"
bash -c "$(curl -fsSL https://gitee.com/mirrors/nvm/raw/master/install.sh)"
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
# sudo snap install --classic code

# gvm
sudo apt-get install bison
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
# golang
gvm install go1.4 -B
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.17.13
gvm use go1.17.13
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.20
gvm use go1.20
