#!/bin/bash

sudo apt update && sudo apt install wget gpg gh git xsel  mesa-utils -y
sudo chmod 777 -R .
 
#Check what GPU is in your pc installed 
gpu_vendor="`lspci | grep -E 'VGA|3D'`"
if [[ $gpu_vendor == *"Intel"*  ]]; then
	apt install xserver-xorg-video-intel libvdpau-va-gl1 -y
fi

#Check existing of prohibition snap 
if [ ! -f /etc/apt/preferences.d/nosnap.pref ]; then 
	sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
	sudo apt update && sudo apt install snapd snap -y
fi

#Installing faster chromium fork
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo apt update
<<<<<<< HEAD
sudo apt install thorium-browser-unstable -y
=======
sudo apt install thorium-browser-unstable chromium
>>>>>>> 1325882bf71e2269e438c152117d897a828d7b6e

#Installing VS Codium - fork of VS Code without telemetry
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium -y

#Installing usualy used apps devided by categories
<<<<<<< HEAD
sudo apt install python3 python3-pip dub golang pypy3 opam default-jre -y
sudo apt install qbittorrent filezilla zeal telegram-desktop qpdfview clamav  -y
sudo apt install i3 rofi feh dwm suckless-tools i3status -y
sudo apt install qtcreator libqt5designer5 libqt6designer6 -y
sudo apt install zsh micro neovim tmux tree screen htop neofetch kitty codeblocks bat -y
sudo apt install flameshot simplescreenrecorder audacity kdenlive gnome-boxes network-manager network-manager-gnome  -y
=======
sudo apt install python3 python3-pip dub golang pypy3 opam default-jre
sudo apt install qbittorrent filezilla zeal telegram-desktop
sudo apt install i3 rofi feh
sudo apt install qtcreator libqt5designer5 libqt6designer6
sudo apt install zsh micro neovim tmux screen htop neofetch kitty codeblocks
sudo apt install flameshot simplesreenrecorder audacity kdenlive gnome-boxes playonlinux
>>>>>>> 1325882bf71e2269e438c152117d897a828d7b6e

#Installing TLauncher Legacy 
wget -O tlauncher.deb https://tlaun.ch/ubuntu
sudo dpkg -i ./tlauncher.deb
