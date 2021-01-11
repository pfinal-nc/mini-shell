#!/bin/bash

echo "=============================dividing line================================"
echo  "监听端口:"
netstat -tunlp
echo "=============================dividing line================================"
echo  "当前建立的连接:"
netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
echo "=============================dividing line================================"

