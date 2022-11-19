#!/bin/bash

sudo apt install linux-tools-$(uname -r)

sudo cpupower frequency-set -g powersave -d 0.8G -u 1.8G

