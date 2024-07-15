#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles/.config"
CONFIG_DIR="$HOME/.config"
HOME_DIR="$HOME/dotfiles/home"

# Ensure the .config directory exists
mkdir -p "$CONFIG_DIR"

# Iterate over all files and directories in the dotfiles .config directory
for item in "$DOTFILES_DIR"/*; do
    # Extract the base name of the file/directory
    base_item=$(basename "$item")
    target="$CONFIG_DIR/$base_item"

    if [ -e "$target" ]; then
        rm -fr "$target"
    fi

    # Create the symlink, overwriting any existing file/directory
    ln -sf "$item" "$target"
done

for item in "$HOME_DIR"/.*; do
    # Extract the base name of the file/directory
    base_item=$(basename "$item")
    target="$HOME/$base_item"
    if [ -e "$target" ]; then
        rm -fr "$target"
    fi
    ln -sf "$item" "$target"
done

echo "Symlinks created successfully!"
