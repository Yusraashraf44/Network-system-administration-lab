#!/bin/bash

# Function to input elements into the array
input_array() {
    echo "Enter the number of elements in the array:"
    read n
    arr=()
    for (( i=0; i<n; i++ ))
    do
        echo "Enter element $((i+1)):"
        read element
        arr+=("$element")  # Add element to array
    done
}

# Function to display the elements of the array
display_array() {
    echo "The elements in the array are:"
    for element in "${arr[@]}"
    do
        echo "$element"
    done
}

# Call the functions
input_array
display_array

