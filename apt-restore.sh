#!/bin/bash

if [ ! $(which apt-clone)]; then
  sudo apt install apt-clone -y
fi

sudo mkdir -p /tmp/apt-restore

sudo apt-clone restore ~/.config/$(hostname).clone.tar.gz --destination /tmp/apt-restore

