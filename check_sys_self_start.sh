#!/bin/bash
echo "开机启动的服务:"
systemctl list-unit-files | grep enabled
