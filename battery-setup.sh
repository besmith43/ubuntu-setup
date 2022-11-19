#!/bin/bash

sudo apt install smbios-utils

sudo smbios-battery-ctl --set-custom-charge-interval 50 80

sudo smbios-battery-ctl --set-charging-mode custom

