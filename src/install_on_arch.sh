#!/bin/bash 

sudo pacman -Syyu
sudo pacman -S archlinux-keyring
sudo pacman -Syyu

sudo pacman -S zsh wget
sudo pacman -S micro neovim htop alacritty nvtop
sudo pacman -Rncs grml-zsh-config
sudo pacman -S openssl-1.1
sudo pacman -S chromium qbittorrent lmms ardour ark gnome-boxes audacity kolourpaint keepassxc gimp krita
sudo pacman -S nim dub dotnet-sdk go tcc cmake  
sudo pacman -S qtcreator code kdevelop
sudo pacman -S discord telegram-desktop
