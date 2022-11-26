#!/bin/bash


repo_path=~/Dev/ubuntu-setup
bin_path=~/Bin

#if [ ! $(which ) ]; then
#   ln -s $repo_path/ $bin_path/
#fi


if [ ! $(which cargo-install) ]; then
    ln -s $repo_path/cargo-install.sh $bin_path/cargo-install
fi

if [ ! $(which get-serviceTag) ]; then
    ln -s $repo_path/get-serviceTag.sh $bin_path/get-serviceTag
fi

if [ ! $(which push-update) ]; then
    ln -s $repo_path/push-update.sh $bin_path/push-update
fi

if [ ! $(which keep-up-to-date) ]; then
    ln -s $repo_path/keep-up-to-date.sh $bin_path/keep-up-to-date
fi

if [ ! $(which trash) ]; then
    ln -s $repo_path/trash.sh $bin_path/trash
fi

if [ ! $(which ls-trash) ]; then
    ln -s $repo_path/ls-trash.sh $bin_path/ls-trash
fi

if [ ! $(which restore-trash) ]; then
    ln -s $repo_path/restore-trash.sh $bin_path/restore-trash
fi

if [ ! $(which empty-trash) ]; then
    ln -s $repo_path/empty-trash.sh $bin_path/empty-trash
fi

if [ ! $(which place-biosupdate) ]; then
    ln -s $repo_path/place-biosUpdate.sh $bin_path/place-biosupdate
fi


