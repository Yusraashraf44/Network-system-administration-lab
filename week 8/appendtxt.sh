#!/bin/bash
echo "Enter a file:"
read file
echo "Enter the text to append to every line:"
read word
sed -i "s/$/ ${word}/" "$file"
