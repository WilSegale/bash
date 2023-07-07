#!/bin/bash

GREEN='\033[32m'
RED='\033[31m'
RESET='\033[0m'

yes=("yes" "Yes" "YES" "y" "Y")

extensions_dir="${HOME}/.vscode/extensions"

if ! cd "$extensions_dir"; then
    echo -e "${RED}[-]${RESET} ERROR"
    echo -e "${RED}[-]${RESET} Failed to access the extensions directory."
    exit 1
fi

echo "Are you sure you want to remove all extensions?"
read -p "YES OR NO: " YesOrNo
if [[ " ${yes[*]} " == *" $YesOrNo "* ]]; then

    if [[ -z "$(find "${extensions_dir}" -mindepth 1 -print -quit)" ]]; then
        echo "Folder is empty"
    else
        for file in *; do
            if [ -d "$file" ]; then
                echo "Deleting extension: $file"
                rm -rf "$file"
            fi
        done

        if [ $? -eq 0 ]; then
            echo -e "${GREEN}[+]${RESET} DONE"
            echo -e "${GREEN}[+]${RESET} All extensions from vscode have been removed. You will have to restart vscode."
        else
            echo -e "${RED}[-]${RESET} ERROR"
            echo -e "${RED}[-]${RESET} Failed to remove extensions."
        fi
    fi

else
    echo -e "${RED}[-]${RESET} DONE"
    echo -e "${RED}[-]${RESET} Ok, your extensions will not be removed."
    exit
fi
