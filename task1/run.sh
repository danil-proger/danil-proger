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
mkdir $backup_folder
find $input_folder -name "*.$extension" \( -exec cp —parents '{}' "$backup_folder" \; \)
tar -czf $backup_folder/../$backup_archive_name $backup_folder 2> "/dev/null"
echo "done"

