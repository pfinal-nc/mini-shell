#!/bin/bash
os_type=$(uname -s)

echo "Running script with OS type: $os_type"

if [ "$os_type" = "CYGWIN" ] || [ "$os_type" = "MINGW" ] || [ "$os_type" = "Darwin" ]; then
    echo "Using ps -al | awk '{print $2,$4}' | grep Z"
    ps -al | awk '{print $2,$4}' | grep Z
else
    echo "Using ps -al | gawk '{print $2,$4}' | grep Z"
    ps -al | gawk '{print $2,$4}' | grep Z
fi
echo "Done running the script"


