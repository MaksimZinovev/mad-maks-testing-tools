#!/bin/bash

# Check if names.txt exists
if [ ! -f names.txt ]; then
  echo "names.txt not found!"
  exit 1
fi

# Clean up names.txt to remove carriage return characters
tr -d '\r' < names.txt > names_clean.txt
mv names_clean.txt names.txt

# Create the output directory if it doesn't exist
mkdir -p output

# Read each line from names.txt and create a file in the output directory
while IFS= read -r name; do
  touch "output/${name}.txt"
  echo "File created: output/${name}.txt"
done < names.txt
