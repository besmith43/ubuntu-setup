#!/bin/bash

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip  -O ~/Downloads/UbuntuMono.zip

mkdir ~/Downloads/UbuntuMono

unzip ~/Downloads/UbuntuMono.zip -d ~/Downloads/UbuntuMono

cp ~/Downloads/UbuntuMono/*.ttf ~/.local/share/fonts

rm -r ~/Downloads/UbuntuMono

rm ~/Downloads/UbuntuMono.zip

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/JetBrainsMono.zip  -O ~/Downloads/JetBrainsMono.zip

mkdir ~/Downloads/JetBrainsMono

unzip ~/Downloads/JetBrainsMono.zip -d ~/Downloads/JetBrainsMono

cp ~/Downloads/JetBrainsMono/*.ttf ~/.local/share/fonts

rm -r ~/Downloads/JetBrainsMono

rm ~/Downloads/JetBrainsMono.zip

fc-cache -f -v

