#! bin/bash

# Updates installed packages
sudo apt update -y

echo -e '\n\e[33m// Packages that can be upgraded //\e[0m\n'

# Lists upgradable packages
apt list --upgradable

echo -en "\n"

# Asks user if he would like to upgrade
while read -p "$(echo -e 'Would you like to \e[33mupgrade\e[0m these packages: [Y/n] ')" -n1 ans
do
	case $ans in
		[yY]|"")
			sudo apt upgrade -y
			echo -e '\n\e[33m// Auto removing unused packages //\e[0m\n'
			sudo apt autoremove -y
			exit 0
			;;
		[nN])
			echo -en "\n"
			exit 0
			;;
		*)
			echo -en "\n" ;;
	esac
done
