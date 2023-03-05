#!/bin/bash

os_info="`cat /proc/version`"

if [[ $os_info == *"Debian"* ]]; then 
	sudo ./src/install_on_debian.sh
elif [[ $os_info == *"Arch"* ]]; then
	sudo ./src/install_on_arch.sh
fi


sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo curl -fsSL https://deno.land/x/install/install.sh | sh
git clone https://github.com/lr-tech/rofi-themes-collection.git themes-rofi
sudo mkdir -p ~/.local/share/rofi/themes/
sudo cp themes-rofi/themes/* ~/.local/share/rofi/themes/
rofi-theme-selector

#Removing all temp files and folders
rm tlaunch*
rm -Rf thmeme*
