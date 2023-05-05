#!/bin/bash

# Opens to browser extensions tab to access js script (does it twice as it does not work first try)
for i in 1 2
do
    xdotool mousemove 1830 75 click 1 mousemove 1650 220 click 1
done

# Runs js script
case $1 in
    "getAnswer")
        sleep 1 && xdotool mousemove 1650 175 click 1 ;;
    "answerCorrectly")
        sleep 1 && xdotool mousemove 1650 250 click 1 ;;
    "revertTitle")
        sleep 1 && xdotool mousemove 1650 325 click 1 ;;
    "test")
        sleep 1 && xdotool mousemove 1650 400 click 1 ;;
esac
