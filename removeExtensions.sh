#!/bin/bash

yes=("yes" "Yes" "YES" "y" "Y")

cd ~/.vscode/extensions

echo "Are you sure you want to remove all extensions?"
read -p "YES OR NO: " YesOrNo

if [[ " ${yes[*]} " == *" $YesOrNo "* ]]; then
    rm -rf *
    echo "All extensions from vscode have been removed. You will have to restart vscode."
else
    echo "Ok, your extensions will not be removed."
    exit
fi
