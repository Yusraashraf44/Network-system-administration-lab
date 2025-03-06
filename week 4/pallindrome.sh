#!/bin/bash

check_palindrome() {
    input_string=$1
    reversed_string=$(echo $input_string | rev) 
    
    if [ "$input_string" == "$reversed_string" ]; then
        echo "The string '$input_string' is a palindrome."
    else
        echo "The string '$input_string' is not a palindrome."
    fi
}


echo "Enter a string:"
read string

# Call the check_palindrome function 
check_palindrome "$string"

