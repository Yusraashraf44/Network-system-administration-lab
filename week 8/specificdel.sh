#!/bin/bash
echo "Enter a file name: "
read file
echo "Enter the linenumber to delete: "
read n
sed -i "${n}d" "$file"
