#!/bin/bash

testuser=pfinal
if grep -q "^$testuser:" /etc/passwd; then
    echo The files for user $testuser are:
    ls -a /home/.b*
else
    echo User $testuser does not exist on this system.
fi    