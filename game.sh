#!/bin/bash

game=(石头 剪刀 布)
num=$((RANDOM % 3))
computer=${game[$num]}

# 通过随机数获取计算机的出拳
# 出拳的可能性保存在一个数组中, game[0],game[1],game[2] 分别是3中不同的可能

echo "请根据下列提示选择您的出拳手势"
echo "1.石头"
echo "2.剪刀"
echo "3.布"
# 获取用户输入
read -p "请输入您的选择：" person

case $person in
1)
    if [ $num -eq 0 ]; then
        echo "平局"
    elif [ $num -eq 1 ]; then
        echo "你赢"
    else
        echo "计算机赢"
    fi
    ;;
2)
    if [ $num -eq 0 ]; then
        echo "计算机赢"
    elif [ $num -eq 1 ]; then
        echo "平局"
    else
        echo "你赢"
    fi
    ;;
3)
    if [ $num -eq 0 ]; then
        echo "你赢"
    elif [ $num -eq 1 ]; then
        echo "计算机赢"
    else
        echo "平局"
    fi
    ;;
*)
    echo "输入错误"
esac
