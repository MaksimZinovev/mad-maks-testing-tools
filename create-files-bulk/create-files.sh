#!/bin/bash

# Check if input file name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file="$1"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "$input_file not found!"
  exit 1
fi

# Clean up the input file to remove carriage return characters
tr -d '\r' < "$input_file" > "${input_file}_clean"
mv "${input_file}_clean" "$input_file"

# Create the output directory if it doesn't exist
mkdir -p output

# Read each line from the input file, ignoring lines starting with '#'
while IFS= read -r name; do
  # Skip lines starting with '#'
  if [[ $name == \#* ]]; then
    continue
  fi
  # Create the file and add the input file name as content
  echo "$input_file" > "output/${name}.txt"
  echo "File created: output/${name}.txt"
done < "$input_file"
