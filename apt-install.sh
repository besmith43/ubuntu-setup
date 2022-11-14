#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"

sudo apt update && sudo apt install microsoft-edge-stable -y 

sudo apt install gimp audacity ansible python3-pip gh git powertop rclone clang pkg-config libssl-dev acpi-support acpid acpi cpufrequtils linux-tools-common tmux fzf gnome-tweaks mpv pulseeffects ardour gnupg2 -y

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

nvm install node

sudo apt install curl g++ gcc autoconf automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev -y

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install ruby-3.1.2

git config --global user.email "besmith43@gmail.com"

git config --global user.name "Blake Smith"

