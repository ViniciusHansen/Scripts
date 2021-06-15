#!/usr/bin/env bash

#Layout Teclado
setxkbmap -model abnt2 -layout br

#update
sudo pacman -Syu

#Flatpak Install
sudo pacman -S flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update 

#Apps Install
sudo pacman -S libinput -y    #Mouse Double Click fix
sudo pacman -S brave -y       #Browser
sudo pacman -S gimp -y        #Image editing
sudo pacman -S code -y        #code
flatpak install flathub com.spotify.Client -y   #music
