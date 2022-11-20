#!/bin/bash

starship preset nerd-font-symbols > ~/.config/starship.toml

cat << 'EOF' >> ~/.bashrc

eval "$(starship init bash)"

EOF

