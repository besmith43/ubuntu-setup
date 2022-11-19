#!/bin/bash

sudo apt install smbios-utils -y

sudo smbios-battery-ctl --set-custom-charge-interval 50 80

sudo smbios-battery-ctl --set-charging-mode custom

