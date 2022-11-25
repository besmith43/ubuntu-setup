#!/bin/bash

cat << 'EOF' >> ~/.bashrc

bind 'set completion-ignore-case'

if [ -d ~/Bin ]; then
    export PATH=~/Bin:$PATH
fi

if [ -d ~/.local/bin ]; then
    export PATH=~/.local/bin:$PATH
fi

if [ -d /home/linuxbrew/.linuxbrew/bin ]; then
    export PATH=/home/linuxbrew/.linuxbrew/bin:$PATH
fi

export SYSTEMD_EDITOR=nvim
export EDITOR=nvim

alias ai="sudo apt install -y"
alias as="apt search"
alias au="sudo apt update && sudo apt upgrade -y"
alias chtsh="curl https://cheat.sh/"
alias gstat="git status"

EOF
