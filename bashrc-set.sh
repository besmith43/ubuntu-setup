#!/bin/bash

cat << 'EOF' >> ~/.bashrc

bind 'set completion-ignore-case'

if [ -d ~/Bin ]; then
    export PATH=~/Bin:$PATH
fi

export SYSTEMD_EDITOR=nvim
export EDITOR=nvim

alias ai="sudo apt install -y"
alias au="sudo apt update && sudo apt upgrade"
alias chtsh="curl https://cheat.sh/"

EOF
