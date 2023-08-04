#!/bin/bash

show=("Show" "show" "SHOW")
hide=("Hide" "hide" "HIDE")

show_hide() {
    local input="$1"
    local found=false

    for option in "${show[@]}"; do
        if [[ "$option" == "$input" ]]; then
            defaults write com.apple.finder AppleShowAllFiles -bool true
            killall Finder
            found=true
            break
        fi
    done

    if [[ "$found" == false ]]; then
        for option in "${hide[@]}"; do
            if [[ "$option" == "$input" ]]; then
                defaults write com.apple.finder AppleShowAllFiles -bool false
                killall Finder
                found=true
                break
            fi
        done
    fi

    if [[ "$found" == false ]]; then
        echo "Unknown option"
        sleep 1
        read -p "Do you want to show or hide folders: " new_input
        show_hide "$new_input"
    fi
}

read -p "Do you want to show or hide folders: " ShowOrHide
show_hide "$ShowOrHide"
