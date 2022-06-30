#!/bin/sh

# Get the latest package list
sudo apt update

# Do the updates
sudo apt-get update
sudo apt --fix-broken install

# Code Server Install
curl -fsSL https://code-server.dev/install.sh | sh

# To have systemd start code-server now and restart on boot:
sudo systemctl enable --now code-server@$USER

# Setting config file to access code-server on port
echo
{
  echo 'bind-addr: 0.0.0.0:8080'
  echo 'auth: password'
  echo 'password: abc123'
  echo 'cert: false'  
} > /home/$USER/.config/code-server/config.yaml

# Git config
git config --global user.name "sanchezpepe"
git config --global user.email sanchezpepe97@gmail.com

# Install Node.js
sudo apt install -y nodejs

# Install Npm
sudo apt install -y npm

# Install Vue.js
# latest stable
npm install vue

# Clear NPM cache
npm cache clean -f

# Update NPM
npm install -g npm@latest

# node version manager
npm install -g n

# Upgrade Node
sudo n stable
