#!/bin/bash

# Check if the input file path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"

# Get current datetime
datetime=$(date +"%Y%m%d%H%M%S")

echo "Generating 4x6 photo."

# Generate photo using ImageMagick
montage -mode concatenate -tile 4x2 -geometry 300x375+5+5 "$input_file" "$input_file" "$input_file" "$input_file" "$input_file" "$input_file" "$input_file" "$input_file" -density 300 -units pixelsperinch "photo$datetime.png"

read -p "Press Enter to continue..."
