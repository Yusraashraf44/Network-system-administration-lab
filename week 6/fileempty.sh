#!/bin/bash

echo "enter file name:"
read file
if [ ! -s "$file" ]; then
    echo "The file is empty."
else
    echo "The file is not empty."
fi

