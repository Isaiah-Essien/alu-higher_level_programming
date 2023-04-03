#!/bin/bash

# Check if URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Send request using curl and get the size of the response body
response=$(curl -s -w "\n%{size_download}\n" -o /dev/null "$1")
size=$(echo "$response" | tail -n 1)

# Display the size of the response body in bytes
echo "Size of response body: $size bytes"
