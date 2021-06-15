#!/usr/bin/env bash

#Layout Teclado
setxkbmap -model abnt2 -layout br

#update
sudo pacman -Syu

#Flatpak Install
sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update 

#Mouse Double Click fix
sudo pacman -S libinput -y

#Apps Install
sudo pacman -S brave -y
sudo pacman -S vscode -y
sudo pacman -S gimp -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub com.visualstudio.code -y
