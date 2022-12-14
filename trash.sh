#!/bin/bash

# info for script to replicate nautilus trash behavior
# folders are treated the same as files

# path to the original file
# /home/besmith/.local/share/Trash/files/

# path to trash info
# /home/besmith/.local/share/Trash/info/

# data contained in .trashinfo file
# [Trash Info]
# Path=/home/besmith/Downloads/hplip-3.22.10.run
# DeletionDate=2022-11-21T19:52:21

mkdir -p ~/.local/share/Trash/

trash_files_path=~/.local/share/Trash/files
trash_info_path=~/.local/share/Trash/info
time_stamp=$(date +%FT%T)

function help_message {
    echo "Usage: $(basename $0) [FILE] [DIR]"
    echo "    -h    display this message"
    exit
}

# got the getopts code from https://www.golinuxcloud.com/bash-getopts/

# list of arguments expected in the input
optstring=":h"

while getopts ${optstring} arg; do
    case ${arg} in
        h)
            help_message
            ;;
        :)
            echo "$0: Must supply an argument to -$OPTARG." >&2
            exit 1
            ;;
        ?)
            echo "Invalid option: -${OPTARG}."
            exit 2
            ;;
    esac
done

if [ -z $1 ]; then
    echo "$(basename $0) requires at least one argument"
    help_message
fi

for arg_var in "$@"
do
    if [ -f $arg_var ]; then
        # the arg is a file
        to_be_trashed_path=$(readlink -f $arg_var)
        touch $trash_info_path/$(basename $arg_var).trashinfo

        echo [Trash Info] > $trash_info_path/$(basename $arg_var).trashinfo
        echo Path=$to_be_trashed_path >> $trash_info_path/$(basename $arg_var).trashinfo
        echo DeletionDate=$time_stamp >> $trash_info_path/$(basename $arg_var).trashinfo

        mv $to_be_trashed_path $trash_files_path
    elif [ -d $arg_var ]; then
        # the arg is a dir
        to_be_trashed_path=$(readlink -f $arg_var)
        touch $trash_info_path/$(basename $arg_var).trashinfo

        echo [Trash Info] > $trash_info_path/$(basename $arg_var).trashinfo
        echo Path=$to_be_trashed_path >> $trash_info_path/$(basename $arg_var).trashinfo
        echo DeletionDate=$time_stamp >> $trash_info_path/$(basename $arg_var).trashinfo

        mv $to_be_trashed_path $trash_files_path
    else
        # houston we have a problem
        echo 'you must pass a file or directory'
        help_message
    fi
done
