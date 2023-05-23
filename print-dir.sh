#!/bin/bash

# Define directories and files to exclude
EXCLUDE_NAMES="node_modules .next .git .env mnemonic*"

# Prepare the find command
FIND_COMMAND="find ."

# Add each directory or file to the find command
for NAME in $EXCLUDE_NAMES
do
    FIND_COMMAND+=" -path ./$NAME -prune -o"
done

FIND_COMMAND+=" -print > directory.txt"

# Run the command
eval $FIND_COMMAND
