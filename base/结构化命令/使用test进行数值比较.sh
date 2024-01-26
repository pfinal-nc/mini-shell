#!/bin/bash
var1=10
var2=5
if [ $var1 -gt $var2 ]; then
    echo "$var1 is greater than $var2"
fi

# 使用 until 循环
var3=100
until [ $var3 -eq 0 ]; do
    echo $var3
    var3=$(($var3 - 25))
done
