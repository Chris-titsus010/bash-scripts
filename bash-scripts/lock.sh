#!/bin/bash

device='/dev/input/by-path/platform-i8042-serio-0-event-kbd'
event_leftctrl='*code 29 (KEY_LEFTCTRL), value 1*'
event_leftctrl_rl='*code 29 (KEY_LEFTCTRL), value 0*'
event_rightctrl='*code 97 (KEY_RIGHTCTRL), value 1*'
event_rightctrl_rl='*code 97 (KEY_RIGHTCTRL), value 0*'
event_alt='*code 56 (KEY_LEFTALT), value 1*'
event_alt_rl='*code 56 (KEY_LEFTALT), value 0*'
event_altgr='*code 100 (KEY_RIGHTALT), value 1*'
event_altgr_rl='*code 100 (KEY_RIGHTALT), value 0*'
event_tab='*code 15 (KEY_TAB), value 1*'
event_leftshift='*code 42 (KEY_LEFTSHIFT), value 1*'
event_leftshift_rl='*code 42 (KEY_LEFTSHIFT), value 0*'
event_rightshift='*code 54 (KEY_RIGHTSHIFT), value 1*'
event_rightshift_rl='*code 54 (KEY_RIGHTSHIFT), value 0*'
event_windows='*code 125 (KEY_LEFTMETA), value 1*'
event_keyA='*code 16 (KEY_Q), value 1*'
event_keyT='*code 20 (KEY_T), value 1*'
event_keyE='*code 18 (KEY_E), value 1*'
event_keyN='*code 49 (KEY_N), value 1*'
event_keyD='*code 32 (KEY_D), value 1*'
event_keyU='*code 22 (KEY_U), value 1*'
msc_scan='*code 4 (MSC_SCAN)*'
syn_report='*SYN_REPORT*'
other_rl='*value 0*'
shift_held=0
defense_mode=0
turn_off=0

xinput --disable "DELL0A20:00 0488:101A Touchpad"
xinput --disable 9
evtest "$device" | while read line; do
	case $line in
	$event_leftctrl|$event_leftctrl_rl|$event_rightctrl|$event_rightctrl_rl|$event_alt|$event_alt_rl|$event_altgr|$event_altgr_rl|$event_tab|$event_leftshift|$event_leftshift_rl|$event_rightshift|$event_rightshift_rl|$event_windows|$event_keyA|$event_keyT|$event_keyE|$event_keyN|$event_keyD|$event_keyU)
		case $line in
		($event_leftctrl)	xinput --disable "AT Translated Set 2 keyboard"
					if [ "$defense_mode" = 0 ]
				   	then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1	
					fi ;;

		($event_leftctrl_rl)	xinput --enable "AT Translated Set 2 keyboard" ;;

		($event_rightctrl)	xinput --disable "AT Translated Set 2 keyboard"
					if [ "$defense_mode" = 0 ]
				   	then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1
					fi ;;

		($event_rightctrl_rl)	xinput --enable "AT Translated Set 2 keyboard" ;;

		($event_alt)		xinput --disable "AT Translated Set 2 keyboard"
					if [ "$defense_mode" = 0 ]
				   	then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1
					fi ;;

		($event_alt_rl)		xinput --enable "AT Translated Set 2 keyboard" ;;

		($event_altgr)		xinput --disable "AT Translated Set 2 keyboard"
					if [ "$defense_mode" = 0 ]
				   	then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1
					fi ;;

		($event_altgr_rl)	xinput --enable "AT Translated Set 2 keyboard" ;;

		($event_leftshift)	xinput --disable "AT Translated Set 2 keyboard"; shift_held=1 ;;

		($event_leftshift_rl)	xinput --enable "AT Translated Set 2 keyboard"; shift_held=0 ;;

		($event_rightshift)	xinput --disable "AT Translated Set 2 keyboard"; shift_held=1 ;;

		($event_rightshift_rl)	xinput --enable "AT Translated Set 2 keyboard"; shift_held=0 ;;

		($event_windows)	if [ "$defense_mode" = 0 ]
					then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1
					fi
					xinput --disable "AT Translated Set 2 keyboard" && xdotool key Super_L && xinput --enable "AT Translated Set 2 keyboard" ;;

		($event_tab)		if [ "$defense_mode" = 0 ]
					then
						(ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Metal Gear Alert! Sound Effect.mp3" & sleep 1 && ffplay -nodisp -autoexit -nostats -loglevel quiet "/home/jessy/Music/Sound effects/Alexa-Intruder-Alert.mp3") &
						xrandr --output eDP-1 --brightness 0
						defense_mode=1
					fi

					if [ "$shift_held" = 0 ]
					then
						xinput --disable "AT Translated Set 2 keyboard" && xdotool keydown shift key Tab keyup shift && xinput --enable "AT Translated Set 2 keyboard"
					fi ;;

		($event_keyA)   	if [ "$turn_off" = 0 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;

		($event_keyT)   	if [ "$turn_off" = 1 ] || [ "$turn_off" = 2 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;

		($event_keyE)   	if [ "$turn_off" = 3 ] || [ "$turn_off" = 7 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;

		($event_keyN)   	if [ "$turn_off" = 4 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;

		($event_keyD)   	if [ "$turn_off" = 5 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;

		($event_keyU)   	if [ "$turn_off" = 6 ]
					then
						let "turn_off+=1"
					else
						turn_off=0
					fi ;;
		esac

		if [ "$turn_off" = 8 ]
		then
			xrandr --output eDP-1 --brightness 1
			xinput --enable "DELL0A20:00 0488:101A Touchpad"
			xinput --enable 9
			exit 0
		fi ;;

	$msc_scan|$syn_report|$other_rl)
		;;

	*)
		turn_off=0 ;;
	esac
done
