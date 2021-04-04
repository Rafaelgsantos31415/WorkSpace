#!/bin/bash

#update

sudo apt update

sudo apt upgrade


echo "\n----------------------------------------"
echo "installing Chrome..."
echo "----------------------------------------\n"

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb

sudo rm google-chrome-stable_current_amd64.deb


echo "\n----------------------------------------"
echo "installing Vim..."
echo "----------------------------------------\n"

sudo apt install vim


echo "\n----------------------------------------"
echo "installing Curl..."
echo "----------------------------------------\n"

sudo apt install curl


echo "\n----------------------------------------"
echo "installing Git..."
echo "----------------------------------------\n"

sudo apt install git


echo "\n----------------------------------------"
echo "installing Python3..."
echo "----------------------------------------\n"

sudo apt install python3


echo "\n----------------------------------------"
echo "installing NodeJS..."
echo "----------------------------------------\n"

sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs


echo "\n----------------------------------------"
echo "installing Java..."
echo "----------------------------------------\n"

sudo apt install default-jre

sudo apt install default-jdk


echo "\n----------------------------------------"
echo "installing Insomnia..."
echo "----------------------------------------\n"

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    
sudo wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

sudo apt update

sudo apt install insomnia


echo "\n----------------------------------------"
echo "installing Snapd..."
echo "----------------------------------------\n"

sudo apt install snapd


echo "\n----------------------------------------"
echo "installing Flatpak..."
echo "----------------------------------------\n"

sudo apt install flatpak

#snap

echo "\n----------------------------------------"
echo "installing Discord..."
echo "----------------------------------------\n"

sudo snap install discord


echo "\n----------------------------------------"
echo "installing VSCode..."
echo "----------------------------------------\n"

sudo snap install code --classic


echo "\n----------------------------------------"
echo "installing Android Studio..."
echo "----------------------------------------\n"

sudo snap install android-studio --classic


echo "\n----------------------------------------"
echo "installing Spotify..."
echo "----------------------------------------\n"

sudo snap install spotify

echo "\n----------------------------------------"
echo "installing VLC"
echo "----------------------------------------\n"

sudo snap install vlc

#config

echo "\n----------------------------------------"
echo "opening vscode"
echo "----------------------------------------\n"

code

sleep 30

pkill code

echo "\n----------------------------------------"
echo "Adding VSCode extensions..."
echo "----------------------------------------\n"

sudo mv Extensions.tar.gz /home/$USER/.vscode/extensions

cd /home/$USER/.vscode/extensions

sudo tar -zxvf Extensions.tar.gz

sudo rm Extensions.tar.gz

cd /home/$USER/workspace

echo "\n----------------------------------------"
echo "config VSCode..."
echo "----------------------------------------\n"

sudo mv keybindings.json /home/$USER/.config/Code/User

sudo mv settings.json /home/$USER/.config/Code/User

echo "\n----------------------------------------"
echo "Rebooting..."
echo "----------------------------------------\n"

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
