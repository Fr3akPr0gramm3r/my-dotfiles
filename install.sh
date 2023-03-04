os_info="`cat /proc/version`"

if [[ $os_info == *"Debian"* ]]; then 
	sh ./src/install_on_debian.sh
elif [[ $os_info == *"Arch"* ]]
	sh ./src/install_on_arch.sh
fi
