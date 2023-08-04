#!/bin/bash

read -p "Do you want to show or hide folders: " ShowOrHide

show=("Show" "show" "SHOW")
hide=("Hide" "hide" "HIDE")

function show_hide(){
   local found=false
   for option in "${show[@]}"; do
      if [[ "$option" == "$ShowOrHide" ]]; then
         defaults write com.apple.finder AppleShowAllFiles -bool true
         killall Finder
         found=true
         break
      fi
   done

   if [[ "$found" == false ]]; then
      for option in "${hide[@]}"; do
         if [[ "$option" == "$ShowOrHide" ]]; then
            defaults write com.apple.finder AppleShowAllFiles -bool false
            killall Finder
            found=true
            break
         fi
      done
   fi

   if [[ "$found" == false ]]; then
      echo "Unkown option"
      show_hide
   fi
}

show_hide
