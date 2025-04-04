#!/bin/bash
echo "Enter a file name:"
read file
echo "Enter the starting line number of set of lines to extract: "
read sno
echo "Enter the ending line number of set of lines to extract: "
read eno

sed -n "${sno},${eno}p" "$file"


