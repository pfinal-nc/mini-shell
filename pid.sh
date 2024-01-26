#!/bin/bash

get_process_info() {
    local pid="$1"
    local os_type="$2"

    local ps_command=""
    if [ "$os_type" = "Linux" ]; then
        ps_command="ps aux"
    elif [ "$os_type" = "Darwin" ]; then
        ps_command="ps -p"
    else
        echo "未知操作系统"
        exit 1
    fi

    # shellcheck disable=SC2155
    local process_info=$($ps_command $pid | awk -v pid="$pid" 'NR==2 {print}')
    # shellcheck disable=SC2155
    local process_count=$(echo "$process_info" | wc -l)

    if [ "$process_count" -eq 0 ]; then
        echo "该PID不存在！！"
        exit 1
    fi

    echo "--------------------------------"
    echo "进程PID: $pid"
    echo "进程命令：$(echo "$process_info" | awk '{print $5}')"
    echo "进程所属用户: $(echo "$process_info" | awk '{print $1}')"
    echo "CPU占用率：$(echo "$process_info" | awk '{print $3}')%"
    echo "内存占用率：$(echo "$process_info" | awk '{print $4}')%"
    echo "进程开始运行的时刻：$(echo "$process_info" | awk '{print $8}')"
    echo "进程运行的时间：$(echo "$process_info" | awk '{print $7}')"
    echo "进程状态：$(echo "$process_info" | awk '{print $6}')"
    echo "进程虚拟内存：$(echo "$process_info" | awk '{print $9}')"
    echo "进程共享内存：$(echo "$process_info" | awk '{print $10}')"
    echo "--------------------------------"
}

# shellcheck disable=SC2162
read -p "请输入要查询的PID: " pid
os_type=$(uname -s)

get_process_info "$pid" "$os_type"
