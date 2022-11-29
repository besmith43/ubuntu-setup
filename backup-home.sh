#!/bin/bash

source="/home/besmith/"
dest="nas:/volume1/backup/NerdXPS-backup/home/"

current_date=$(date '+%F')

rsync_options="-avbhe ssh --exclude 'OneDrive' --backup-dir $dest/$current_date --delete"

rsync $rsync_options $source $dest


