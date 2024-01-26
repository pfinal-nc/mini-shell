#!/bin/bash

# 编写一个 脚本测试  172.16.93.0/24 整个网段中那些主机处于开机状态,那些主机处于关机状态 
for i in {1..254}
do
    ping -c2 -i0.3 -W1 172.16.93.$i &> /dev/null
    if [ $? -eq 0 ];then
        echo "172.16.93.$i is up"
    else
        echo "172.16.93.$i is down"
    fi
done