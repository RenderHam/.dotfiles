#!/usr/bin/env bash

dir="$HOME/.config/rofi/launcher/"
theme='theme'

# CMDs
uptime="$(uptime -p | sed -e 's/up //g')"
host=$(Kuuki)

# Options
terminal=''
browser='󰈹'
mc='󰍳'
game='󰊗'
legcord=''
s_m=''
f_m=''
books='󱉟'
steam=''
lutris=''

# Rofi CMD
rofi_cmd() {
    rofi -dmenu \
        -p "Uptime: $uptime" \
        -mesg "Uptime: $uptime" \
        -theme ${dir}/${theme}.rasi
}

# Confirmation CMD
confirm_cmd() {
    rofi -theme-str 'window {location: center; anchor: center; fullscreen: false; width: 350px;}' \
        -theme-str 'mainbox {children: [ "message", "listview" ];}' \
        -theme-str 'listview {columns: 2; lines: 1;}' \
        -theme-str 'element-text {horizontal-align: 0.5;}' \
        -theme-str 'textbox {horizontal-align: 0.5;}' \
        -dmenu \
        -mesg 'Steam OR Lutris' \
        -theme ${dir}/${theme}.rasi
}

confirm_mode() {
    echo -e "$steam\n$lutris" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
    echo -e "$terminal\n$browser\n$mc\n$game\n$legcord\n$s_m\n$f_m\n$books" | rofi_cmd
}

# Execute Command
run_cmd() {
    if [[ $1 == 'terminal' ]]; then
        urxvt
    elif [[ $1 == 'browser' ]]; then
        firefox-developer-edition &>/dev/null
    elif [[ $1 == 'mc' ]]; then
        sh ~/LocalGames/prism/PrismLauncher >/dev/null
    elif [[ $1 == 'game' ]]; then
        selected="$(confirm_mode)"
        if [[ "$selected" == "$steam" ]]; then
            prime-run steam
        elif [[ "$selected" == "$lutris" ]]; then
            lutris
        else
            exit 0
        fi
    elif [[ $1 == 'legcord' ]]; then
        legcord &>/dev/null
    elif [[ $1 == 's_m' ]]; then
        coppwr
    elif [[ $1 == 'f_m' ]]; then
        urxvt -e yazi
    elif [[ $1 == 'books' ]]; then
        zathura
    else
        exit 0
    fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
$terminal)
    run_cmd terminal
    ;;
$browser)
    run_cmd browser
    ;;
$mc)
    run_cmd mc
    ;;
$game)
    run_cmd game
    ;;
$legcord)
    run_cmd legcord
    ;;
$s_m)
    run_cmd s_m
    ;;
$f_m)
    run_cmd f_m
    ;;
$books)
    run_cmd books
    ;;
esac
