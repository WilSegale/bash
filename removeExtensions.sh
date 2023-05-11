#!/bin/bash
if which code >/dev/null; then
    echo "Visual Studio Code is installed"
    cd ~/.vscode/extensions
    echo "Are you sure that you want to remove all extensions"
    read -p "YES OR NO: " YesOrNo

    if  [[ $YesOrNo == "YES" ]] || 
        [[ $YesOrNo == "yes" ]] || 
        [[ $YesOrNo == "y" ]] || 
        [[ $YesOrNo == "Y" ]]; then
        rm -rf *
        echo "All extensions from vscode have been removed. You will have to reset vscode"
    else
        echo "Ok your extensions will not be removed"
        exit
    fi
else
    echo "Visual Studio Code is not installed"
fi
