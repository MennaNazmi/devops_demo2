#!/bin/bash
echo "Hi,Menna! "

# What to backup.
backup_files="/home/menna/obs_task/"
# Where to backup to.
dest="ubuntu@34.205.172.213:/home/ubuntu/files_backup/"

rsync -av   $backup_files  -e "ssh -i ans_try_book.pem"  $dest | grep -w "f[0-9]\|f1[0-5]"
