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
echo "installing Spotify..."
echo "------------------------"

snap install spotify

#config

echo "------------------------"
echo "Adding VSCode extensions..."
echo "------------------------"

mv Extensions.tar.gz/ /home/rafael/.vscode/extensions/

cd /home/rafael/.vscode/extensions/

tar -zxvf Extensions.tar.gz

rm Extensions.tar.gz

cd /home/rafael/WorkSpace

echo "------------------------"
echo "config VSCode..."
echo "------------------------"

mv keybindings.json /home/rafael/.config/Code/User/

mv settings.json /home/rafael/.config/Code/User/

echo "------------------------"
echo "changing title buttons..."
echo "------------------------"

gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

echo "------------------------"
echo "installin Theme..."
echo "------------------------"

tar -zxvf Layan.tar.gz

rm Layan.tar.gz

mv Layan/ /usr/share/themes

gsettings set org.gnome.desktop.interface gtk-theme "Layan"

echo "------------------------"
echo "installing icon..."
echo "------------------------"

tar -zxvf Tela.tar.gz

rm Tela.tar.gz

mv Layan/ /usr/share/icons

gsettings set org.gnome.desktop.interface icon-theme 'Tela'
