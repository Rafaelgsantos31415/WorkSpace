#!/bin/bash

echo "----------------------------------------"
echo "Updating and Upgrading..."
echo "----------------------------------------"

apt update

pkcon update

apt upgrade

echo "----------------------------------------"
echo "installing Chrome..."
echo "----------------------------------------"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt install ./google-chrome-stable_current_amd64.deb

rm google-chrome-stable_current_amd64.deb

echo "----------------------------------------"
echo "installing Vim..."
echo "----------------------------------------"

apt install vim

echo "----------------------------------------"
echo "installing Curl..."
echo "----------------------------------------"

apt install curl

echo "----------------------------------------"
echo "installing Git..."
echo "----------------------------------------"

apt install git

echo "----------------------------------------"
echo "installing Python3..."
echo "----------------------------------------"

apt install python3

echo "----------------------------------------"
echo "installing NodeJS..."
echo "----------------------------------------"

curl -sL https://deb.nodesource.com/setup_12.x | -E bash -
apt install -y nodejs

echo "----------------------------------------"
echo "installing Java..."
echo "----------------------------------------"

apt install default-jre

apt install default-jdk

echo "----------------------------------------"
echo "installing Snapd..."
echo "----------------------------------------"

apt install snapd

echo "----------------------------------------"
echo "installing Flatpak..."
echo "----------------------------------------"

apt install flatpak

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
