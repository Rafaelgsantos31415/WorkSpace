#!/bin/bash

echo "----------------------------------------"
echo "installing Chrome..."
echo "----------------------------------------"

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb

sudo rm google-chrome-stable_current_amd64.deb


echo "----------------------------------------"
echo "installing Vim..."
echo "----------------------------------------"

sudo apt install vim


echo "----------------------------------------"
echo "installing Curl..."
echo "----------------------------------------"

sudo apt install curl


echo "----------------------------------------"
echo "installing Git..."
echo "----------------------------------------"

sudo apt install git


echo "----------------------------------------"
echo "installing Python3..."
echo "----------------------------------------"

sudo apt install python3


echo "----------------------------------------"
echo "installing NodeJS..."
echo "----------------------------------------"

sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs


echo "----------------------------------------"
echo "installing Java..."
echo "----------------------------------------"

sudo apt install default-jre

sudo apt install default-jdk

echo "----------------------------------------"
echo "installing Snapd..."
echo "----------------------------------------"

sudo apt install snapd

echo "----------------------------------------"
echo "installing Flatpak..."
echo "----------------------------------------"

sudo apt install flatpak

#snap

echo "----------------------------------------"
echo "installing Discord..."
echo "----------------------------------------"

sudo snap install discord

echo "----------------------------------------"
echo "installing Insomnia..."
echo "----------------------------------------"

sudo snap install insomnia

echo "----------------------------------------"
echo "installing VSCode..."
echo "----------------------------------------"

sudo snap install code --classic


echo "----------------------------------------"
echo "installing Android Studio..."
echo "----------------------------------------"

sudo snap install android-studio --classic


echo "----------------------------------------"
echo "installing Spotify..."
echo "----------------------------------------"

sudo snap install spotify

echo "----------------------------------------"
echo "installing VLC"
echo "----------------------------------------"

sudo snap install vlc

echo "----------------------------------------"
echo "installing VLC"
echo "----------------------------------------"

sudo snap install docker


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
