read -p "Do you want to show or hide folders: " showOrHide

defaults write com.apple.finder AppleShowAllFiles -bool true; killall Finder
