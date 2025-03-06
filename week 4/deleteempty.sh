#!/bin/bash
find . -type f -size 0 -exec rm -f {} \;
echo "Empty files have been deleted."


