#!/bin/bash

# see stack overflow on where I got this from
# https://askubuntu.com/questions/927854/how-do-i-increase-the-size-of-swapfile-without-removing-it-in-the-terminal#:~:text=Resize%20Swap%20File%201%20Turn%20off%20usage%20of,read...%207%20of%20%3D%20output%20file%20See%20More.

sudo fallocate -l 8G /swapfile-8g
sudo chmod 600 /swapfile-8g
sudo mkswap /swapfile-8g
sudo swapon /swapfile-8g
sudo swapoff /swapfile

sudo vim /etc/fstab



