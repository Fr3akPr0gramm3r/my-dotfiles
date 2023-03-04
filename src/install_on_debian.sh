sudo apt update && sudo apt install wget gpg

#Check existing of prohibition snap 
if [ ! -f /etc/apt/preferences.d/nosnap.pref ]; then 
	sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
	sudo apt update && sudo apt install snapd snap
fi

#Installing faster chromium fork
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install thorium-browser-unstable chromium

#Installing VS Codium - fork of VS Code without telemetry
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install codium

#Installing usualy used apps devided by categories
sudo apt install python3 python3-pip dub golang pypy3 opam default-jre
sudo apt install qbittorrent filezilla zeal telegram-desktop
sudo apt install i3 rofi feh
sudo apt install qtcreator libqt5designer5 libqt6designer6
sudo apt install zsh micro neovim tmux screen htop neofetch kitty codeblocks
sudo apt install flameshot simplesreenrecorder audacity kdenlive gnome-boxes playonlinux

#Installing TLauncher Legacy 
wget -O tlauncher.deb https://tlaun.ch/ubuntu
sudo dpkg -i ./tlauncher.deb
