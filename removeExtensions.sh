cd ~/.vscode/extensions
echo "Are you sure that you want to remove all extensions"
read -p "YES OR NO: " YesOrNo
if [[ $YesOrNo == "YES" ]] then
    rm -rf *
    echo "All extensions from vscode have been removed. You will have to reset vscode"
else
    exit
fi