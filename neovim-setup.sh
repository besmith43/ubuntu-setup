#!/bin/bash

sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen python3-pynvim -y

if [ ! -d ~/Github ]; then
    mkdir ~/Github
fi

cd ~/Github

git clone https://github.com/neovim/neovim

cd ~/Github/neovim

make CMAKE_BUILD_TYPE=Release

sudo make install


