#! bin/bash

echo -e "\n\n\n"

figlet -w $(tput cols) -c "Welcome  Back !" | lolcat -F 0.5 -a -s 50

echo -e "\n"

if [ "$(iwgetid -r)" = "" ]
then
	echo -e "Not connected to WiFi\n" | lolcat
else
	echo -e "Connected to $(iwgetid -r)\n" | lolcat
fi

acpi | lolcat

exit 0
