#!/bin/sh

# Get the latest package list
sudo apt update

# Do the updates
sudo apt-get update
sudo apt --fix-broken install

# install wget
sudo apt install -y software-properties-common apt-transport-https wget

sudo apt install --assume-yes wget tasksel

# Download the Debian Linux Chrome Remote Desktop installation package:
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Install the package and its dependencies:
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install -y --fix-broken

# install GNOME
#sudo DEBIAN_FRONTEND=noninteractive \
#    apt-get install -y ubuntu-gnome-desktop
    
sudo tasksel install ubuntu-desktop

# Configure Chrome Remote Desktop to use GNOME by default:
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'

# Disable animations to improve performance
gsettings set org.gnome.desktop.interface enable-animations false

# Install Chrome browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install -y --fix-broken

# Cleanup remove the unnecessary files after the installation is done:
rm chrome-remote-desktop_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Disable the display manager service:
# There is no display connected to the VM --> the display manager service won't start.
sudo systemctl disable lightdm.service

# Install the Google Cloud SDK
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get install apt-transport-https ca-certificates gnupg

curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

sudo apt-get update 
sudo apt-get install -y google-cloud-sdk

# END Install the Google Cloud SDK

# Install Visual Studio Code
sudo snap install --classic code

# Install Node.js
sudo apt install -y nodejs

# Install Npm
sudo apt install -y npm

# Install Vue.js
# latest stable
npm install vue

//Install VSCOde
wget https://code.visualstudio.com/docs/?dv=linux64_deb
sudo apt install ./code_1.65.2-1646927742_amd64.deb

//Clear NPM cache
npm cache clean -f

//Update NPM
npm install -g npm@latest

// node version manager
npm install -g n

//Upgrade Node
sudo n stable
