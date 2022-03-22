#! bin/bash

clear

str="Chargement"
prev_rand=0

trap "clear && exit 130" INT

while true
do
	while true
	do
		rand_nb=$(expr $RANDOM % 6 + 1)
		if [ $rand_nb -ne $prev_rand ]
		then
			break
		fi
	done
	prev_rand=$rand_nb
	
	echo -en "\e[3${rand_nb}m$str"
	for i in {1..3}
	do
		echo -n "."
		sleep 1
	done
	clear
done
