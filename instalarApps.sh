#!/usr/bin/env bash

#update
sudo apt update && sudo apt upgrade -y

#DE
sudo apt install ubuntu-unity-desktop

#Flatpak Install
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update

#Apps Install
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.spotify.Client
flatpak install flathub org.gimp.GIMP
flatpak install flathub com.visualstudio.code
sudo apt install brave-browser