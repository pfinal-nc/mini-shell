#!/bin/bash
net=$1
i=1
count=0
while [$i -le 254] #主机号1-254
do
   if [$count -eq 20 ];then
      count=0
      sleep 1
   fi
done
wait
echo '######################################'
arp | grep -v 'incomplate' #过滤不含有 incomplate的内容
echo '######################################'

