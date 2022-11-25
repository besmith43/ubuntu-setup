#!/bin/bash

sudo fallocate -l 8G /swapfile-8g
sudo chmod 600 /swapfile-8g
sudo mkswap /swapfile-8g
sudo swapon /swapfile-8g
sudo swapoff /swapfile

sudo vim /etc/fstab



