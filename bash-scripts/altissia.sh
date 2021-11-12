(while true; do
        xdotool mousemove 1800 1050 click --delay 3000 1 mousemove 1400 600 click --delay 3000 1
done) &
./lock.sh
pkill -f altissia.sh
