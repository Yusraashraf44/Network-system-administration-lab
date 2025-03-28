#!/bin/bash
if [ $# -lt 2 ]; then
    echo "Usage: $0 <filename> <action> [additional arguments]"
    echo "Actions:"
    echo "  1 - Delete a particular line"
    echo "  2 - Delete the last line"
    echo "  3 - Delete lines in a range (x to y)"
    echo "  4 - Delete all blank lines"
    exit 1
fi

filename=$1
action=$2
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi

case $action in
    1)  # Delete a particular line
        line=$3
        if [ -z "$line" ]; then
            echo "Usage for action 1: $0 <filename> 1 <line_number>"
            exit 1
        fi
        sed -i "${line}d" "$filename"
        echo "Deleted line $line."
        ;;
        
    2)  # Delete the last line
        sed -i '$d' "$filename"
        echo "Deleted the last line."
        ;;
        
    3)  # Delete lines in a range
        start=$3
        end=$4
        if [ -z "$start" ] || [ -z "$end" ]; then
            echo "Usage for action 3: $0 <filename> 3 <start_line> <end_line>"
            exit 1
        fi
        sed -i "${start},${end}d" "$filename"
        echo "Deleted lines from $start to $end."
        ;;
        
    4)  # Delete all blank lines
        sed -i '/^$/d' "$filename"
        echo "Deleted all blank lines."
        ;;
        
    *)  # Invalid action
        echo "Invalid action. Please use 1, 2, 3, or 4."
        exit 1
        ;;
esac

