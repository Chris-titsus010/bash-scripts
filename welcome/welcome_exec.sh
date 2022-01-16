#! bin/bash

width=$(bash -c "xrandr --current | grep '*' | uniq | awk '{print \$1}' | cut -d 'x' -f1")
height=$(bash -c "xrandr --current | grep '*' | uniq | awk '{print \$1}' | cut -d 'x' -f2 | cut -d ' ' -f1")
width=$(($width / 2 - 722 / 2))
height=$(($height / 2 - 434 / 2))
gnome-terminal --geometry 80x24+$width+$height -- bash -c "bash ~/bash-scripts/welcome/welcome.sh; sleep 5"

exit 0
