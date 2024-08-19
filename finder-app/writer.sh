#!/bin/bash
# A script for writer app.

writefile=$1
writestr=$2

if [ -n "$writefile" ] ; then
  echo "The file '$writefile' exists."
else
  echo "Error: Missing parameters. File directory $writefile is not defined"
  exit 1
fi

if [ -n "$writestr" ]; then
  echo "The writestr is '$writestr'."
else
  echo "Error: The writestr argument is empty."
  exit 1
fi

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

#Writing into the new file
echo "${writestr}" > ${writefile}

if [ $? -ne 0 ]
then
        echo "Failed to write ${writefile} file"
      	exit 1
fi

exit 0