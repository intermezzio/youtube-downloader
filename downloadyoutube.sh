#!/bin/bash
id=$(wmctrl -l | grep -oP "(?<=)(0x\w+)(?=.*Mozilla Firefox)") # Put here the regex for the browser you use
xdotool key --window $id "ctrl+l"
xdotool key --window $id "ctrl+c"
url=$(xclip -out -selection clipboard)
cd ~/Videos
youtube-dl -f mp4 $url
