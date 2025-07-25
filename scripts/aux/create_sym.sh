#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
CONFIG_DIR="$HOME/.config"

echo -e "\e[34mLinking dotfiles from: $DOTFILES_DIR\e[0m"

shopt -s dotglob

for item in "$DOTFILES_DIR"/*; do
    name="$(basename "$item")"

    # Skip the scripts folder, .git and .gitignore
    if [[ "$name" == "scripts" || "$name" == ".git" || "$name" == ".gitignore" ]]; then
        continue
    fi

    # If it's a .config directory, handle each app inside it
    if [[ "$name" == ".config" && -d "$item" ]]; then
        for app in "$item"/*; do
            app_name="$(basename "$app")"

            # Also skip .gitignore inside .config
            if [[ "$app_name" == ".gitignore" ]]; then
                continue
            fi

            target="$CONFIG_DIR/$app_name"

            if [[ -e "$target" && ! -L "$target" ]]; then
                echo "Backing up existing config: $target -> ${target}_bak"
                mv "$target" "${target}_bak"
            fi

            if [[ -L "$target" ]]; then
                echo "Removing old symlink: $target"
                rm "$target"
            fi

            echo "Linking $app -> $target"
            ln -s "$app" "$target"
        done
    else
        # Link dotfiles (like .app1, .app2) directly to home
        target="$HOME/$name"

        if [[ -e "$target" && ! -L "$target" ]]; then
            echo "Backing up existing file: $target -> ${target}_bak"
            mv "$target" "${target}_bak"
        fi

        if [[ -L "$target" ]]; then
            echo "Removing old symlink: $target"
            rm "$target"
        fi

        echo "Linking $item -> $target"
        ln -s "$item" "$target"
    fi
done
