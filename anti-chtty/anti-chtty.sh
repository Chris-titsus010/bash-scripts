#! /bin/bash

xdotool keydown Control_L && xdotool keydown Alt_L && xdotool key F4 && xdotool keyup Alt_L && xdotool keyup Control_L && echo "Hello World"
