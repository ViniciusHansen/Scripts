#!/usr/bin/env bash

setxkbmap -model abnt2 -layout br

sudo pacman -Syu

sudo pacman -S libinput chromium firefox gimp libreoffice code thunderbird discord steam git htop neofetch python-pip docker docker-compose bpytop ffmpeg base-devel vim obs-studio kdenlive noto-fonts-emoji nodejs okular radeontop 

sudo pacman -Scc

yay -S spotify
