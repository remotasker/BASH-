#!/bin/bash

# Author: Elmer
# Description: This script backs up a specified directory to an offline storage device.

# Set backup source and destination
SOURCE_DIR="$HOME/Documents"  # Change this to the directory you want to back up
BACKUP_DIR="/media/$USER/BackupDrive"  # Change this to your external storage mount point
LOG_FILE="$HOME/backup.log"

# Check if the destination exists
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup destination not found! Please connect your offline storage." | tee -a "$LOG_FILE"
    exit 1
fi

# Perform backup using rsync
rsync -av --progress --delete "$SOURCE_DIR/" "$BACKUP_DIR/" | tee -a "$LOG_FILE"

# Check if rsync was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully on $(date)" | tee -a "$LOG_FILE"
else
    echo "Backup failed on $(date)" | tee -a "$LOG_FILE"
fi

exit 0
