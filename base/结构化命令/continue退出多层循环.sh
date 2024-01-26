#! /usr/bin/zsh

for ((a = 1; a <= 10; a++)); do
    echo "Iteration $a:"
    for ((b = 1; b <= 10; b++)); do
        if [ $a -gt 2 ] && [ $a -lt 4 ]; then
            continue 2
        fi
        var3=$(($a * $b))
        echo " The result of $a * $b is $var3"
    done
done
