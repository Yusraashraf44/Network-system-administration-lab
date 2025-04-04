#!/bin/bash


echo "Enter the file name:"
read file

append_line="This is the appended line."

sed -i "/\.$/a $append_line" "$file"
echo "File modified successfully. Here's the updated content:"
cat "$file"

