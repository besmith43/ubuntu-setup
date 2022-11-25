#!/bin/bash

if [ -z $(which gum) ]; then
    echo "gum is required to use this script"
    echo "please visit https://github.com/charmbracelet/gum"
    echo "or run 'go install github.com/charmbracelet/gum@latest' to install it"
    exit 1
fi

confirm=$(gum confirm)

if [ $confirm == 1 ]; then
    echo "empty trash cancelled"
    exit 1
fi

trash_files_path=~/.local/share/Trash/files
trash_info_path=~/.local/share/Trash/info

rm -r $trash_files_path/*
rm $trash_info_path/*.trashinfo

