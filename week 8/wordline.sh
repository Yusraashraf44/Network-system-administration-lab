#!/bin/bash
echo "Enter a file:"
read file
echo "Enter the word in lines which are to be deleted:"
read word
sed -i "/${word}/d" "$file" 
