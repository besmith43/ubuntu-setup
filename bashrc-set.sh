#!/bin/bash

echo "bind 'set completion-ignore-case'" >> ~/.bashrc

echo if [ -d ~/Bin ]; then >> ~/.bashrc
echo "    export PATH=~/Bin:$PATH" >> ~/.bashrc
echo fi >> ~/.bashrc
