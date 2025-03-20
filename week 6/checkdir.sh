#!/bin/bash
if [ -d "$1" ];
then
    echo "file is a directory"
else
    echo "file is not a directory."
fi

