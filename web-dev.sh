#!/bin/sh

# Get the latest package list
sudo apt update

# Do the updates
sudo apt-get update
sudo apt --fix-broken install

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

# Install Git
sudo apt install git-all

# Git config
git config --global user.name "sanchezpepe"
git config --global user.email sanchezpepe97@gmail.com
