#!/usr/bin/env bash

setxkbmap -model abnt2 -layout br

# add multilib to pacman.conf
sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf

# update pacman
sudo pacman -Syu

# install yay (AUR helper)
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R tecmint:tecmint ./yay-git
cd yay-git
makepkg -si
yay -Syu

# main programs
sudo pacman -S libinput chromium gimp libreoffice code thunderbird discord steam git htop neofetch python3-pip docker docker-compose bpytop ffmpeg base-devel vim obs-studio kdenlive noto-fonts-emoji nodejs okular radeontop peek mpv
yay -S spotify

# LibreGaming (https://github.com/Ahmed-Al-Balochi/LibreGaming)
pip3 install LibreGaming
libregaming --tui


#clear pacman cache
sudo pacman -Scc
