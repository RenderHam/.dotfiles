#!/bin/bash

# Auto-clicker script

# Function to simulate mouse click
click() {
    xdotool click $1
}

# Main function
main() {
    local interval=0.1 # Adjust this value to change click speed
    local running=false

    while true; do
        if $running; then
            click 3 # Click mouse button 1 (left-click)
            sleep $interval
        else
            sleep 0.1 # Small delay before starting again
        fi

        if [ "$running" = true ]; then
            running=false
        else
            running=true
        fi
    done
}

# Start the main function
main
