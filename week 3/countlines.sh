#!/bin/bash
if [ -z "$1" ]; then
	echo "please provide a filename"
	exit 1
fi
line_count=$(wc -l < "$1")
echo "The file '$1'contains $line_count lines."
