#!/usr/bin/env bash

setxkbmap -model abnt2 -layout br

sudo pacman -Syu

sudo pacman -S libinput chromium firefox gimp libreoffice code thunderbird discord steam git spotify htop neofetch

sudo pacman -Scc
