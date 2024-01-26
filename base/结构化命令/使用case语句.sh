#!/bin/bash

case $USER in
root | pfinal)
    echo "Welcome, $USER"
    echo "Pleas enjoy your visit"
    ;;
testing)
    echo "Special testing account"
    ;;
jessica)
    echo "Do not forget to logout when you are out"
    ;;
*)
    echo "Sorry, you are not allowed here"
    ;;
esac

if [ $USER = "pfinal" ]; then
    echo "Welcome, $USER"

elif [ $USER = "root" ]; then
    echo "You are root"
else
     # else body
    echo "You are not root"
fi
