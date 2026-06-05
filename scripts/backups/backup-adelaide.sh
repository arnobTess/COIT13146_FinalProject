#!/bin/bash

SERVER="adelaide"
SOURCE="tess@192.168.50.4:/var/www/"
DATE=$(date +"%Y%m%d_%H%M%S")
DEST="/backups/$SERVER/$DATE"
REPORT="$DEST/${SERVER}-backup-output.txt"

mkdir -p "$DEST"

{
echo "Backup Report"
echo "Server: $SERVER"
echo "Timestamp: $DATE"
echo "Backup Owner: tess"
echo "Source: $SOURCE"
echo "Destination: $DEST"
echo "Files backed up:"
echo "----------------"
} > "$REPORT"

rsync -av --itemize-changes "$SOURCE" "$DEST/files/" >> "$REPORT" 2>&1
