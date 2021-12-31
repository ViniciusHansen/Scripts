#     _             _       _   _           _       _
#    / \   _ __ ___| |__   | | | |_ __   __| | __ _| |_ ___
#   / _ \ | '__/ __| '_ \  | | | | '_ \ / _` |/ _` | __/ _ \
#  / ___ \| | | (__| | | | | |_| | |_) | (_| | (_| | ||  __/
# /_/   \_\_|  \___|_| |_|  \___/| .__/ \__,_|\__,_|\__\___|
#                                |_|
# Basically a script to update arch packages, clear orphan packages and cache
# Made by github.com/ViniciusHansen

sudo pacman -Rns $(pacman -Qtdq)    # remove pacman orphan packages
yay -Yc                             # remove AUR orphan packages
sudo pacman -Syyu                   # update pacman packages
yay -Syu                            # update AUR packages
# clear cache
sudo pacman -Scc
yay -Scc
sudo journalctl --vacuum-time=2weeks
rm -rf .cache/*
