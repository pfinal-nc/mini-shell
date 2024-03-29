#! /bin/sh
# 退出状态 $?可以获取上一个命令的退出状态。
if [[ $? != 0 ]];then
  echo "error"
  exit 1;
fi

# 转义字符
# \\ 反斜杠
# \a  警报 响铃
# \b  退格(删除键)
# \f  换页(FF), 将当前位置移到下页开头

# 算数运算符
# +	    加法	`expr $a + $b` 结果为 30。
*	    乘法	`expr $a \* $b` 结果为  200。
# -   	减法	`expr $a - $b` 结果为 10。
# /	    除法	`expr $b / $a` 结果为 2。
# %	    取余	`expr $b % $a` 结果为 0。
# =	    赋值	a=$b 将把变量 b 的值赋给 a。
# ==	    相等。用于比较两个数字，相同则返回 true。	[ $a == $b ] 返回 false。
# !=	    不相等。用于比较两个数字，不相同则返回 true。	[ $a != $b ] 返回 true。
expr 2 + 2 #4
expr 3 - 2
