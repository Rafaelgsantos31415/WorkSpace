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
echo "installing Vim..."
echo "----------------------------------------"

apt install -y vim

echo "----------------------------------------"
echo "installing Curl..."
echo "----------------------------------------"

apt install -y curl

echo "----------------------------------------"
echo "installing Git..."
echo "----------------------------------------"

apt install -y git

echo "----------------------------------------"
echo "installing Python3..."
echo "----------------------------------------"

apt install -y python3

echo "----------------------------------------"
echo "installing NodeJS..."
echo "----------------------------------------"

curl -sL https://deb.nodesource.com/setup_12.x | -E bash -
apt install -y nodejs

echo "----------------------------------------"
echo "installing ZSH..."
echo "________________________________________"

apt install -y zsh

echo "----------------------------------------"
echo "installing Java..."
echo "----------------------------------------"

apt install -y default-jre

apt install -y default-jdk

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
echo "Rebooting..."
echo "----------------------------------------"

echo "rebooting in 10"
sleep 1

echo "rebooting in 9"
sleep 1

echo "rebooting in 8"
sleep 1

echo "rebooting in 7"
sleep 1

echo "rebooting in 6"
sleep 1

echo "rebooting in 5"
sleep 1

echo "rebooting in 4"
sleep 1

echo "rebooting in 3"
sleep 1

echo "rebooting in 2"
sleep 1

echo "rebooting in 1"
sleep 1

echo "goodbye"
reboot
