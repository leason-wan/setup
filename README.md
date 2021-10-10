# My ubuntu Setup

## Create a new user
```bash
adduser --disabled-password <your_username>
usermod -aG sudo <your_username>
su - <your_username>
```
And then update `.ssh/authorized_keys` with your ssh public key.

## apt mirrors

```bash
sudo vi /etc/apt/sources.list
```

[aliyun](https://developer.aliyun.com/mirror/ubuntu?spm=a2c6h.13651102.0.0.41c81b11w4uUNu)

## apps

apt install git curl openssh-server net-tools

## Install zsh
```bash
sudo apt install -y zsh
sh -c "$(curl -fsSL https://gitee.com/mirrors/oh-my-zsh/raw/master/tools/install.sh)"
```

## Setup my system
```bash
chmod +x ./setup.sh
./setup.sh
```
Follow the prompt and finish installing all softwares.
```bash
source ~/.zshrc
```
