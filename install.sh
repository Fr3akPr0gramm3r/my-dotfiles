#!/bin/bash
sudo chmod 777 ./* -R

os_info="`cat /proc/version`"

if [[ $os_info == *"Debian"* ]]; then 
	sudo ./src/install_on_debian.sh
elif [[ $os_info == *"arch"* ]]; then
	sudo ./src/install_on_arch.sh
fi

#oh-my-zsh installation
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

#rustup installer
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#modern js/ts runtime installer
sudo curl -fsSL https://deno.land/x/install/install.sh | sh

#themes for rofi with installation
git clone https://github.com/lr-tech/rofi-themes-collection.git themes-rofi
sudo mkdir -p ~/.config/rofi/themes/
sudo cp themes-rofi/themes/* ~/.config/rofi/themes/
rofi-theme-selector

#GoPlus installer
git clone https://github.com/goplus/gop.git
cd gop
./all.bash


#Removing all temp files and folders
rm tlaunch*
rm -Rf thmeme*
