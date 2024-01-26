#!/bin/bash

for file in /Users/pfinal/*; do
    if [ -d "$file" ]; then
        echo "$file is a directory"
    else
        echo "$file is a file"
    fi
done > output.txt


# piping a loop to another command

for state in "North Dakota" Connecticut; do
    echo "$state has $(grep -o $state <<< "$states") state(s)."
done | sort
echo "This completes our travels"    