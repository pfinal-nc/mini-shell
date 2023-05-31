#! /bin/sh
user="shell"
passwd="123"
read -p "输入用户名:>" username
read -p "输入密码:>" pwd

# []表示判断 -a 表示 and 关系
[ $username == $user -a $passwd == $pwd ] && echo 'login' || echo "error"
