#!/bin/bash
# A script for finder app.

filesdir=$1
searchstr=$2

# Check if filesdir is provided and is a directory
if [ -n "$filesdir" ] && [ -d "$filesdir" ]; then
  echo "The directory '$filesdir' exists."
else
  echo "Error: Missing parameters. File directory $filedir is not defined"
  exit 1
fi

# Check if the searchstr is provided
if [ -n "$searchstr" ]; then
  echo "The directory '$searchstr' is stated."
else
  echo "Error: Missing parameters. Search string $searchstr is not defined"
  exit 1
fi

# Find the number of files in the directory and its subdirectories
file_count=$(find "$filesdir" -type f | wc -l)

# Find the number of matching lines in the files
match_count=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

# Print the result
echo "The number of files are $file_count and the number of matching lines are $match_count"