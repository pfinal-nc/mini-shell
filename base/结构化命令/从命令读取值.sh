#!/bin/bash
file="state"

for state in `cat $file`
do
    echo "Visit beautiful $state"
done