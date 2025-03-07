#!/bin/bash
echo "Enter a string:"
read str
if [ "$str" == "$(echo $str | rev)" ]; then
    echo "The give  string is a palindrome."
else
    echo "The given string is not a palindrome."
fi

