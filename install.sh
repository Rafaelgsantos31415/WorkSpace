#!/bin/bash

echo "----------------------------------------"
echo "Updating and Upgrading..."
echo "----------------------------------------"

apt update

apt upgrade

pkcon update

echo "----------------------------------------"
echo "installing Chrome..."
echo "----------------------------------------"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt install -y ./google-chrome-stable_current_amd64.deb

rm google-chrome-stable_current_amd64.deb

echo "----------------------------------------"
echo "installing Git..."
echo "----------------------------------------"

apt install -y git

echo "----------------------------------------"
echo "installing Python3..."
echo "----------------------------------------"

apt install -y python3

echo "----------------------------------------"
echo "installing ZSH..."
echo "________________________________________"

apt install -y zsh

echo "----------------------------------------"
echo "installing Snapd..."
echo "----------------------------------------"

apt install -y snapd

echo "----------------------------------------"
echo "installing Flatpak..."
echo "----------------------------------------"

apt install -y flatpak

#snap

echo "----------------------------------------"
echo "installing Java..."
echo "----------------------------------------"

snap install openjdk

snap install java-jre-ondra --edge

echo "----------------------------------------"
echo "installing Node..."
echo "----------------------------------------"

snap install node --classic

echo "----------------------------------------"
echo "installing Curl..."
echo "----------------------------------------"

snap install curl

echo "----------------------------------------"
echo "installing Vim..."
echo "----------------------------------------"

snap install vim-editor --beta

echo "----------------------------------------"
echo "installing Discord..."
echo "----------------------------------------"

snap install discord

echo "----------------------------------------"
echo "installing Insomnia..."
echo "----------------------------------------"

snap install insomnia

echo "----------------------------------------"
echo "installing VSCode..."
echo "----------------------------------------"

snap install code --classic


echo "----------------------------------------"
echo "installing Android Studio..."
echo "----------------------------------------"

snap install android-studio --classic


echo "----------------------------------------"
echo "installing Spotify..."
echo "----------------------------------------"

snap install spotify

echo "----------------------------------------"
echo "installing VLC"
echo "----------------------------------------"

snap install vlc

echo "----------------------------------------"
echo "installing Docker"
echo "----------------------------------------"

snap install docker

echo "----------------------------------------"
echo "installing Oh My ZSH"
echo "----------------------------------------"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
