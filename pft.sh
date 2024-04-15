#!/bin/bash

query="{query}"

if [ -z "$query" ]; then
    # 获取当前时间戳
    timestamp=$(date +%s)
    echo $timestamp
else
    # 格式化传入的时间为时间戳
    formatted_timestamp=$(date -d "$query" +%s 2>/dev/null)

    if [ $? -eq 0 ]; then
        echo $formatted_timestamp
    else
        echo "Invalid date format: $query"
    fi
fi
