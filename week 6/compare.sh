#!/bin/bash

echo "enter first file name:"
read file1
echo "enter second file name:"
read file2

if cmp -s "$file1" "$file2"; then
    echo "The files are identical."
else
    echo "The files are different."
fi

