#!/usr/bin/env bash

#Layout Teclado
setxkbmap -model abnt2 -layout br

#update
sudo apt update && sudo apt upgrade -y

#Flatpak Install
sudo add-apt-repository ppa:alexlarsson/flatpak  -y
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update 

#Apps Install
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install git -y
sudo apt install speedtest -y
sudo apt install libreoffice -y
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.gimp.GIMP -y
flatpak install flathub com.visualstudio.code -y

#brave browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
