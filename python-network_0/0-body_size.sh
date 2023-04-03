#!/bin/bash
# Check if URL argument is provided

[ -z "$1" ] && { echo "Error: Please provide a URL as an argument."; exit 1; }

size=$(curl -s -w "\n%{size_download}\n" -o /dev/null "$1" | tail -n 1)

echo "Size of response body: $size bytes"
