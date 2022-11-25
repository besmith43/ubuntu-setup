#!/bin/bash

sudo apt update && sudo apt upgrade -y

# installing microsoft edge
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"

sudo apt update && sudo apt install microsoft-edge-stable -y 

sudo apt install gimp audacity ansible python3-pip git golang-go dotnet-sdk-6.0 cmake powertop rclone clang pkg-config libssl-dev acpid acpi cpufrequtils linux-tools-common tmux fzf gnome-tweaks mpv pulseeffects ardour gnupg2 caffeine gdebi handbrake handbrake-cli -y

sudo apt install libfuse2 -y 

sudo snap install powershell --classic

sudo snap install code --classic

