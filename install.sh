 #!/bin/bash

#update and upgrade

echo "------------------------"
echo "updating..."
echo "------------------------"

apt update

echo "------------------------"
echo "upgrading..."
echo "------------------------"

apt upgrade

#apt install

echo "------------------------"
echo "installing Chrome..."
echo "------------------------"

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

apt install ./google-chrome-stable_current_amd64.deb

rm google-chrome-stable_current_amd64.deb

echo "------------------------"
echo "installing Vim..."
echo "------------------------"

apt install vim

echo "------------------------"
echo "installing Curl..."
echo "------------------------"

apt install curl

echo "------------------------"
echo "installing Git..."
echo "------------------------"

apt install git

echo "------------------------"
echo "installing Python3..."
echo "------------------------"

apt install python3

echo "------------------------"
echo "installing NodeJS..."
echo "------------------------"

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
apt install -y nodejs

echo "------------------------"
echo "installing Java..."
echo "------------------------"

apt install default-jre

apt install default-jdk

echo "------------------------"
echo "installing Insomnia..."
echo "------------------------"

echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
    
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -

apt update

apt install insomnia

echo "------------------------"
echo "installing Snapd..."
echo "------------------------"

apt install snapd

echo "------------------------"
echo "installing Flatpak..."
echo "------------------------"

apt install flatpak

#snap

echo "------------------------"
echo "installing Discord..."
echo "------------------------"

snap install discord

echo "------------------------"
echo "installing VSCode..."
echo "------------------------"

snap install code --classic

echo "------------------------"
echo "installing Android Studio..."
echo "------------------------"

snap install android-studio --classic

echo "------------------------"
echo "installing Spotify..."
echo "------------------------"

snap install spotify

#config

echo "------------------------"
echo "Creating vscode folders"
echo "------------------------"

cd /home/$USER

mkdir .vscode

cd .vscode

mkdir extensions

cd /home/$USER

cd .config

mkdir Code

cd Code

mkdir User

cd /home/$USER/workspace


chmod -R 777 /home/$USER/.vscode

chmod -R 777 /home/$USER/.config/Code


echo "------------------------"
echo "Adding VSCode extensions..."
echo "------------------------"

mv Extensions.tar.gz /home/$USER/.vscode/extensions/

cd /home/$USER/.vscode/extensions/

tar -zxvf Extensions.tar.gz

rm Extensions.tar.gz

cd /home/$USER/workspace

echo "------------------------"
echo "config VSCode..."
echo "------------------------"

mv keybindings.json /home/$USER/.config/Code/User/

mv settings.json /home/$USER/.config/Code/User/

echo "------------------------"
echo "installin Theme..."
echo "------------------------"

chmod -R 777 /usr/share/themes

tar -zxvf Layan.tar.gz

rm Layan.tar.gz

mv Layan/ /usr/share/themes

echo "------------------------"
echo "installing icon..."
echo "------------------------"

chmod -R 777 /usr/share/icons

tar -zxvf Tela.tar.gz

rm Tela.tar.gz

mv Tela/ /usr/share/icons

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
