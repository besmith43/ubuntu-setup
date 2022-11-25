#!/bin/bash

trash_files_path=~/.local/share/Trash/files
trash_info_path=~/.local/share/Trash/info

selected=$(ls $trash_files_path | gum choose --no-limit)

for item in "$selected"
do
    restore_path=$(cat $trash_info_path/$item.trashinfo | grep Path | cut -c 6-)
    mv $trash_files_path/$item $restore_path
    rm $trash_info_path/$item.trashinfo
done

