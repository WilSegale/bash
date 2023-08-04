read -p "Do you want to show or hide folders: " ShowOrHide

show=("Show" "show" "SHOW")
hide=("Hide" "hide" "HIDE")

if [[ " ${show[*]} " == *" $ShowOrHide "* ]]; 
   then
      defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
elif [[ " ${hide[*]} " == *" $ShowOrHide "* ]];
   then
      defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder
else
   echo "Unknown option"

fi