#!/bin/bash
echo "enter the file:"
read file
if [ -r "$file" ]; then
    echo "File has read permission."
else
    echo "File does not have read permission."
fi
if [ -w "$file" ]; then
    echo "File has write permission."
else
    echo "File does not have write permission."
fi
if [ -x "$file" ]; then
    echo "File has execute permission."
else
    echo "File does not have execute permission."
fi

