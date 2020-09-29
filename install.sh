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


#flatpak

echo "------------------------"
echo "installing Spotify..."
echo "------------------------"

flatpak install flathub com.spotify.Client

#config

echo "------------------------"
echo "changing title buttons..."
echo "------------------------"

gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:'

echo "------------------------"
echo "installin Theme..."
echo "------------------------"

cd /usr/share/themes

wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1OTcxMjM5NjUiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImJiM2Y5ZWQwMWE3MDNlODA5YzM0NjhjOTBlYzgzMjA3ZDZhMDRjNDU0OTk4NDkwYTBmMDIyNzMzMzc5YmY5ZjlmNzY5MDVhMDI2ZmM3NTEyNWUyMDA3ZjNhYzdkNzk4YTY5MTA1Y2EzOTY0YmQ1NjQ5NGE4NjhlOTQzYjZmYjg5IiwidCI6MTYwMTQwNzMwNiwic3RmcCI6ImJiNTYzMmE1ZTc3MGQ0MGFiYjNjMDRlM2NmZDlkYTI0Iiwic3RpcCI6IjE4Ni4yMTQuMTMyLjg5In0.53_iCfnVXJg5ufaCGPubo6vGIn2CtcNmLk9ciCJl4yg/Layan-dark-solid.tar.xz

tar -Jxxvf Layan-dark-solid.tar.xz

rm Layan-dark-solid.tar.xz

gsettings set org.gnome.desktop.interface gtk-theme "Layan-dark-solid"

echo "------------------------"
echo "installing icon..."
echo "------------------------"

cd /usr/share/icons

wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDEyNzI3MTIiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6Ijk0YTY5MDU0NGY5ZDhhZThiNjA2YWZlNzUzYzQwY2YzYWJjNjU5ZmM4ZGZmZmFjYjhmZDk0ZDZlOTJlMzZlMWRlNjUwNmQ2YWM2MGU5MzQyZWZlY2I5NjY3ZjEyNDBiNjZiMjdjM2FhNTY4NWZkOWJhM2Q1MmIxYzIzYTg5Y2E4IiwidCI6MTYwMTQwNzQ3Niwic3RmcCI6ImJiNTYzMmE1ZTc3MGQ0MGFiYjNjMDRlM2NmZDlkYTI0Iiwic3RpcCI6IjE4Ni4yMTQuMTMyLjg5In0.H3lrc_sAl5Nv3-KLvxwD50UfVVT4BQiJypO28JOnn-0/02-Tela-black.tar.xz

tar -Jxxvf 02-Tela-black.tar.xz

rm 02-Tela-black.tar.xz

gsettings set org.gnome.desktop.interface icon-theme 'Tela-black'
