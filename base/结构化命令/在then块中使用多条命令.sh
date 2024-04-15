#!/bin/bash
testuser=pfinal
if grep $testuser /etc/passwd; then
    echo "User $testuser exists"
    ls -a /Users/$testuser/.b*
fi
