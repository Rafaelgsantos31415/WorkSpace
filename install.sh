#!/bin/bash

#update

sudo apt update

sudo apt upgrade

#chrome

sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt install ./google-chrome-stable_current_amd64.deb

sudo rm google-chrome-stable_current_amd64.deb


echo "installing Vim..."

sudo apt install vim


echo "installing Curl..."

sudo apt install curl


echo "installing Git..."

sudo apt install git


echo "installing Python3..."

sudo apt install python3


echo "installing NodeJS..."

sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt install -y nodejs


echo "installing Java..."

sudo apt install default-jre

sudo apt install default-jdk


echo "installing Insomnia..."

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    
sudo wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

sudo apt update

sudo apt install insomnia


echo "installing Snapd..."

sudo apt install snapd


echo "installing Flatpak..."

sudo apt install flatpak

#snap

echo "installing Discord..."

sudo snap install discord


echo "installing VSCode..."

sudo snap install code --classic


echo "installing Android Studio..."

sudo snap install android-studio --classic


echo "installing Spotify..."

sudo snap install spotify

echo "installing VLC"

sudo snap install vlc

#config

echo "opening vscode"

code

sleep 30

kill code

echo "------------------------"
echo "Adding VSCode extensions..."
echo "------------------------"

sudo mv Extensions.tar.gz /home/$USER/.vscode/extensions

cd /home/$USER/.vscode/extensions

sudo tar -zxvf Extensions.tar.gz

sudo rm Extensions.tar.gz

cd /home/$USER/workspace

echo "------------------------"
echo "config VSCode..."
echo "------------------------"

sudo mv keybindings.json /home/$USER/.config/Code/User

sudo mv settings.json /home/$USER/.config/Code/User

echo "------------------------"
echo "Rebooting..."
echo "------------------------"

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
