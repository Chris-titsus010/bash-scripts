#! bin/bash

device='/dev/input/by-path/platform-i8042-serio-0-event-kbd'

evtest "$device" | while read line; do
	echo $line
done
