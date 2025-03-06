#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide a file name."
  exit 1
fi

extension="${1##*.}"

case "$extension" in
  sh)
    echo "$1 is a shell script (.sh)"
    ;;
  txt)
    echo "$1 is a text file (.txt)"
    ;;
  jpg | jpeg)
    echo "$1 is a JPEG image (.jpg or .jpeg)"
    ;;
  png)
    echo "$1 is a PNG image (.png)"
    ;;
  *)
    echo "Unknown file type or unsupported extension."
    ;;
esac

