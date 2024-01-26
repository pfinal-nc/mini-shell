#!/bin/bash
if [ -e $HOME ]; then
    echo "OK on the directory.now to check the file"
    if [ -e $HOME/test.txt ]; then
        echo "Appending date to existing file"
        date >>$HOME/test.txt
    else
        echo "Creating a new file"
        date >>$HOME/test.txt
    fi
else
    echo "Sorry,the directory does not exist"
fi
