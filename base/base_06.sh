#! /bin/sh

# 函数
# 函数可以让我们将一个复杂功能划分成若干模块, 让程序结构更加清晰,代码重复利用率更高。像其他编程语言一样.shell也支持函数 shell函数必须先定义后使用

# 函数定义
hello(){
    echo 'hello world';
}

hello

# shell 函数返回值只能是整数, 一般用来表示函数执行成功与否, 0 表示成功, 其他值表示失败, 如果 return 其他数据,比如一个字符串, 往往会得到错误提示: numeric
# 如果一定要让函数返回字符串

function test(){
    echo "hello pfinal"
}

str=$(test)
echo $str

# 函数参数

# 在shell 中, 调用函数时可以向其传递参数 在函数体内部, 通过 $n 的形式来获取参数的值

function sum(){
    case $# in
            0) echo "no param";;
            1) echo $1;;
            2) echo `expr $1 + $2`;;
            3) echo `expr $1 + $2 + $3`;;
            *) echo "$# params!";;
    esac
}

# sum 1 3 5 6 > test

# 特殊变量	说明
# $#	传递给函数的参数个数。
# $*	显示所有传递给函数的参数。
# $@	与$*相同，但是略有区别，请查看Shell特殊变量。
# $?	函数的返回值。

# 输出重定向
# 重定向到文件  command > file
# 如果不希望文件内容被覆盖, 可以使用 >> 追加 到文件末尾


# 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
# 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
# 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息

# 全部可用的重定向命令列表：
# 命令	说明
# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file	将文件描述符为 n 的文件重定向到 file。
# n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m	将输出文件 m 和 n 合并。
# n <& m	将输入文件 m 和 n 合并。
# << tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。

