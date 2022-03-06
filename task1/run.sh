#!/bin/bash

for i in 1 2 3 4
do
case "$1" in
"--input_folder") INPUT_FOLDER="$2";;
"--extension") EXTENSION="$2";;
"--backup_folder") BACKUP_FOLDER="$2";;
"--backup_archive_name") BACKUP_ARCHIVE_NAME="$2";;
esac
shift
shift
done


mkdir $BACKUP_FOLDER
find $INPUT_FOLDER -name "*.$EXTENSION" | xargs cp —parents -t $BACKUP_FOLDER
tar -czf $BACKUP_FOLDER/../$BACKUP_ARCHIVE_NAME $BACKUP_FOLDER 2>"/dev/null"
echo "done"
