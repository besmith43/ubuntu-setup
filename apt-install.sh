#!/bin/bash

echo "bind 'set completion-ignore-case'" >> ~/.bashrc

sudo apt update && sudo apt upgrade -y

# installing microsoft edge
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"

sudo apt update && sudo apt install microsoft-edge-stable -y 

sudo apt install gimp audacity ansible python3-pip git golang-go dotnet-sdk-6.0 cmake powertop rclone clang pkg-config libssl-dev acpi-support acpid acpi cpufrequtils linux-tools-common tmux fzf gnome-tweaks mpv pulseeffects ardour gnupg2 -y

# installing github cli tool through apt repo
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# installing rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# setting up nvm for node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

nvm install node

# setting up rvm for Ruby
sudo apt install curl g++ gcc autoconf automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev gnupg2 -y

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash -s stable

source ~/.rvm/scripts/rvm

rvm install ruby-3.1.2

# basic git config
git config --global user.email "besmith43@gmail.com"

git config --global user.name "Blake Smith"

# installing apt repo for gum
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg
echo "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install gum


# setting up powershell
# Update the list of packages
sudo apt-get update
# Install pre-requisite packages.
sudo apt-get install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
sudo dpkg -i packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt-get update
# Install PowerShell
sudo apt-get install -y powershell

rm packages-microsoft-prod.deb

# applying changes to bash
source ~/.bashrc
