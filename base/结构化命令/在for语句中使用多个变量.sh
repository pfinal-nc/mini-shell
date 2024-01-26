#!/bin/bash

for ((a = 1, b = 10; a <= 10; a++, b--)); do
    sum=$(($a + $b))
    echo "Sum of $a and $b is $sum"
done
