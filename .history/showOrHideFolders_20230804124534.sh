read -p "Do you want to show or hide folders: " ShowOrHide

defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
