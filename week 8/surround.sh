#!/bin/bash
echo "Enter a file name:"
read file
cat $file
echo "Enter line number:"
read line
sed -i '${n}/[0-9]\+/[\0]/g' "$file"

