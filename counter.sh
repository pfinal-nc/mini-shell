#!bin/bash
# 统计文件或目录数量
STR=$1
case $STR in
    f|1) ls -l | grep "^-" | wc -l;;
    d|2) ls -l | grep "^d" | wc -l;;
    *) echo "执行counter.sh f|d - f表示文件,d表示目录";;
esac    
