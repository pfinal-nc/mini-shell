#!/bin/bash

if [[ $USER == p* ]]; then
    echo "Hello $USER"
else
    echo "Sorry, I do not know you"
fi
