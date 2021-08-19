#!/bin/bash

# Prompt user for zip file name and save to variable
echo "What is the name of your zip file (without the extension)?"
read zipFile

# Make exports directory if it doesn't already exist
echo "Creating exports directory if it doesn't exist..."
mkdir -p exports

# Find all paths in current directory that do not start with . or end with .sh (to ignore git and export files)
echo "Zipping your files to /exports/$zipFile.zip..."
find . -not -path "./.*" -and -not -path "*.sh" -and -not -path "./exports*" -exec zip exports/$zipFile.zip {} +
echo "All done!"

# Print exports directory
ls exports