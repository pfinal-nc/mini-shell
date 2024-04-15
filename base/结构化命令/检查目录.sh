#!/bin/bash

# if [ -d $HOME ]; then
#     echo "The directory $HOME exists."
#     cd $HOME
#     ls -a
# else
#     echo "The directory $HOME does not exist."
# fi

val1=baseball
val2=hocky

if [ $val1 \> $val2 ]; then
    echo "$val1 is greater than $val2"
else
    echo "$val1 is less than $val2"
fi
