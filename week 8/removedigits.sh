#!/bin/bash
echo "Enter a file:"
read file
echo "Your file contents are:"
cat $file
echo "Enter the line number in which digits are to be removed: "
read n
sed -i "${n}s/[0-9]//g" "$file"
echo "Your updated line is"
sed -n "${n}p" "$file"



