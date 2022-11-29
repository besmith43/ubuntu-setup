#!/bin/bash

if [ ! $(which apt-clone)]; then
  sudo apt install apt-clone -y
fi

sudo apt-clone clone ~/.config/$(hostname)

