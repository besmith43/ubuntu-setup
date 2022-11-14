#!/bin/bash

sudo apt install libusb-1.0-0-dev -y

sudo cp 50-zsa.rules /etc/udev/rules.d/50-zsa.rules

sudo groupadd plugdev
sudo usermod -aG plugdev $USER

wget https://configure.ergodox-ez.com/wally/linux -o ~/Bin/wally

