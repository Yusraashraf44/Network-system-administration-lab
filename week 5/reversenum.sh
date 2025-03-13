#!/bin/bash
echo "Enter a 5-digit number:"
read num
if [ ${#num} -ne 5 ]; then
    echo "Error: Please enter exactly a 5-digit number."
    exit 1
fi
reverse=$(echo $num | rev)
echo "Reversed number is: $reverse"


