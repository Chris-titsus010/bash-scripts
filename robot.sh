#! /bin/bash

device='/dev/input/by-path/platform-i8042-serio-0-event-kbd'
key_press='*value 1'
i=0

evtest "$device" | while read line; do
        case $line in
        $key_press)
                if (( $i % 2 ))
                then
                        play -q '/home/jessy/Music/Sound effects/Julien-boop.mp3' -t alsa &
                else
                        play -q '/home/jessy/Music/Sound effects/Julien-beep.mp3' -t alsa &
                fi
                let "i+=1"
        esac
done