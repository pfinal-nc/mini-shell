#!/bin/bash

if [ -d $HOME ] && [ -w $HOME/testing ]; then
    echo "You have write permission."
else
    echo "You are not allowed to write to $HOME/testing"
fi
