#!/bin/bash
for ((i = 0; i < 5; i++)); do
    echo "Outher loop: $i"
    for ((j = 0; j < 10; j++)); do
        if [ $j -gt 4 ]; then
            break 2
        fi
        echo "Inner loop: $j"
    done    
done
