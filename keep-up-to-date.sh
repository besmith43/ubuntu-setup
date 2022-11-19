#!/bin/bash

if [ -d ~/Dev ]; then
    for repo in $(ls ~/Dev)
    do
        if [ -d ~/Dev/$repo/.git ]; then
            cd ~/Dev/$repo
            git pull
        fi
    done
fi

if [ -d ~/.config/nvim ]; then
    if [ -d ~/.config/nvim/.git ]; then
        cd ~/.config/nvim
        git pull
    fi
fi

