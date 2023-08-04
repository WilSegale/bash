read -p "Do you want to show or hide folders: " ShowOrHide

show=("Show" "show" "SHOW" "y" "Y")

if [ "$ShowOrHide" == "Show" ]; 
   then
      defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
elif [ "$ShowOrHide" == "Hide" ];
   then
      defaults write com.apple.finder AppleShowAllFiles -bool false; killall Finder
fi