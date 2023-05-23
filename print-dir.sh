#!/bin/bash
# Script to export directory structure excluding certain directories and 
files

# Define directories and files to exclude
EXCLUDE_NAMES="node_modules .next .git .env mnemonic*"

# Prepare the find command
FIND_COMMAND="find . \( "

# Add each directory or file to the find command
for NAME in $EXCLUDE_NAMES; do
    FIND_COMMAND+="-name '$NAME' -o "
done

# Remove the last "-o" and add the rest of the command
FIND_COMMAND=${FIND_COMMAND::-3}
FIND_COMMAND+="\) -prune -o -print > directory.txt"

# Run the command
eval $FIND_COMMAND

