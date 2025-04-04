#!/bin/bash
echo "Enter a file: "
read file
echo "Enter the word to replace: "
read word
echo "Enter the word to be replaced: "
read rword
sed -i "s/${word}/${rword}/g" "$file"
