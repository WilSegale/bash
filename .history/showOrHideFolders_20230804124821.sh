read -p "Do you want to show or hide folders: " ShowOrHide

show=("Show" "show" "SHOW")
Hide=("Hide" "hide" "HIDE")
if [[ " ${show[*]} " == *" $ShowOrHide "* ]]; 
   then
      defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
elif [[ " ${show[*]} " == *" $ShowOrHide "*]];
   then
      defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder
fi