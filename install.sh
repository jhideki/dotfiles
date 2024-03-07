#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

DOT_FOLDERS="bash,zsh,nvim"

for folder in $(echo $DOT_FOLDERS | sed "s/,/ /g"); do
    echo "[+] Folder :: $folder"
    stow --ignore=README.md --ignore=LICENSE \
        -t $HOME -D $folder
    stow -v -t $HOME $folder
done

# Reload shell once installed
echo "[+] Reloading shell..."
exec $SHELL -l
