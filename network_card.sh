#!/bin/bash

NIC=$1

if [ -z "$NIC" ]; then
    echo "请提供网络接口名称作为参数。"
    exit 1
fi

if ! ifconfig "$NIC" &>/dev/null; then
    echo "错误：网络接口 $NIC 不存在。"
    exit 1
fi

echo -e " In ----- Out"
while true; do
    OLD_IN=$(ifconfig "$NIC" | awk '/RX bytes/{print $2}' | cut -d ':' -f2)
    OLD_OUT=$(ifconfig "$NIC" | awk '/TX bytes/{print $6}' | cut -d ':' -f2)
    sleep 1
    NEW_IN=$(ifconfig "$NIC" | awk '/RX bytes/{print $2}' | cut -d ':' -f2)
    NEW_OUT=$(ifconfig "$NIC" | awk '/TX bytes/{print $6}' | cut -d ':' -f2)
    IN=$(awk -v old="$OLD_IN" -v new="$NEW_IN" 'BEGIN {print (new - old) / 1024}')
    OUT=$(awk -v old="$OLD_OUT" -v new="$NEW_OUT" 'BEGIN {print (new - old) / 1024}')
    echo "$IN $OUT"
    sleep 1
done
