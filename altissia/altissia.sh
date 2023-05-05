#!/bin/bash

# Focuses Brave window
wmctrl -a Brave

tabClosed=false
# Waits until browser has been focused
while true
do
	if [[ $(xdotool getactivewindow getwindowname) =~ "Brave" ]]
	then
		if [[ $(xdotool getactivewindow getwindowname) == *Exercise* ]]
		then
			echo "Exercise"
			if [ -z ${jsScript+x} ]
			then
				echo "Dupe"
				# Duplicates browser tab and waits until window loads
				xdotool keydown Alt_L && xdotool key d && xdotool keydown Shift_L && xdotool key Return && xdotool keyup Shift_L && xdotool keyup Alt_L
				echo "WUT"
				while [[ $(xdotool getactivewindow getwindowname) != *Exercise* ]]; do
					:
				done
				echo "WUT2"
			fi

			# bash runJs.sh "test"

			jsScript=$([ -z ${jsScript+x} ] || [ "$jsScript" == "answerCorrectly" ] && echo "getAnswer" || echo "answerCorrectly")

			echo $(xdotool getactivewindow getwindowname)
			echo $jsScript
			if [ "$jsScript" == "getAnswer" ]
			then
				# Switches to next browser tab
				xdotool keydown Control_L && xdotool key Tab && xdotool keyup Control_L
			else
				if [ $tabClosed = false ]
				then
					# Switches to previous browser tab
					xdotool keydown Control_L && xdotool keydown Shift_L && xdotool key Tab && xdotool keyup Shift_L && xdotool keyup Control_L
					tabClosed=false
				fi
			fi
			echo $(xdotool getactivewindow getwindowname)
			bash runJs.sh $jsScript
			echo $(xdotool getactivewindow getwindowname)

			# Waits until the javascript is done
			while [[ ! $(xdotool getactivewindow getwindowname) =~ Ok|^Close\ me ]]; do
				:
			done
			echo "Ok"
			echo $(xdotool getactivewindow getwindowname)
			# Closing tabs with title containing 'Close me'
			if [[ $(xdotool getactivewindow getwindowname) == "Close me" ]]
			then
				echo "Close me"
				xdotool keydown Control_L key w keyup Control_L
				tabClosed=true
			else
				# Removes 'Ok' from title and waits until it has done so
				bash runJs.sh "revertTitle"
				while [[ $(xdotool getactivewindow getwindowname) != *Exercise* ]]; do
					:
				done
			fi
			echo -e "\n"
		fi
	fi
done


#/home/jessy/bash-script/AFK-lock/lock.sh
#pkill -f altissia.sh
