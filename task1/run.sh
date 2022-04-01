#!/bin/bash
while [ -n "$1" ]
do
case "$1" in
	"--input_folder") in_Folder="$2";;
	"--extension") extension="$2";;
	"--backup_folder") back_Folder="$2";;
	"--backup_archive_name") backup_archive_name="$2";;
esac
shift
shift
done
mkdir "${back_Folder}"
find "${in_Folder}" -name "*.$extension" \( -exec cp --parents '{}' "${back_Folder}" \; \)
tar -czf $back_Folder/../$back_archive_name $back_Folder 2>"/dev/null"
echo "done"

