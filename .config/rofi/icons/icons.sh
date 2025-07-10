#!/bin/sh

dir="$HOME/.config/rofi/icons/"
theme='theme'

cat ~/Documents/nerdfonts.txt |
    rofi -dmenu -theme ${dir}/${theme}.rasi |
    awk '{print $1}' | xsel -i -b
