# echo $(ls $(pwd))
# a=`pwd`
# echo $a
# age=18
# let age=age+1
# echo $age

# let i++
# echo $i
# let ++i
# echo $i

# num=30
# echo ${num}RMB 

# pwd;ls ~ ;clear

sex=11
echo ${#sex}
echo $sex | wc -l
echo $sex | awk "{print length}"

# 切片
msg="hello world"
echo ${msg}
echo ${msg:4} # 从4号索引开始
echo ${msg:4:3} # 3 in a row starting with index number 4
echo ${msg::3} # 3 in a row starting with index number 0

# 截断
url="www.sina.com.cn"
echo ${url#www.} # #代表从左边开始进行删除
echo ${url%.cn}
echo ${url%%.*}
echo ${url%%w*}
echo ${url%w*}

# 变量的代替 /表示替换 /替换的内容
url="pfinal.go.icu"
echo ${url/./#}  # 替换第一个
echo ${url//./}  # 全部替换
echo ${url//./!}

# for fname in `ls ./`; do mv $fname ${fname/bash_/test}; done

# 逻辑判断,循环与分支选择

x=5
y=10
z=20
# if then
echo "if then commaand"
if [ $x != $y ]
then
    echo $x != $y
    echo "Print agin $x == $y"
fi

# if else

echo "###########"

if [ $x != $y ]
then
    echo "$x != $y"
else
    echo "$x == $y"
fi

# if else-if else

echo "if else-if else command"
if [ $x == $y ]
then
    echo "$x == $y"
elif [ $y == $z ]
then
    echo "$x != $y and $y == $z"
else
    echo "$x != $y and $y != $z"
fi

# 循环
arr=(1 2 3 4 5)
echo "For loop"
for var in ${arr[*]}
do 
    echo "$var"
done

#While loop
echo "While loop"
i=0
while (( $i < ${#arr[*]} ))
do
    echo "${arr[$i]}"
    let "i++"
done

# Break and continue
echo "Break and continue"
j=0
while [[ $j < ${#arr[*]} ]]
do 
    if [ $j == 3 ]
    then
        echo "Break in ${arr[$j]}"
        break
    elif [ $j == 1 ]
    then 
        echo "Dump ${arr[$j]}"
        let "j++"
        continue
    else
        echo "Print ${arr[$j]}"
    fi
    let j++
done

# 分支选择

x=3
case $x in
    1) echo 'Case1'
    ;;
    2) echo 'Case2'
    ;;
    3) echo 'Case3'
    ;;
    4) echo 'Case4'
    ;;
    *) echo 'Default'
    ;;
esac

printf "hello\n" # printf

# 特殊的变量
# $0  当前脚本的文件名
# $n  传递给脚本或函数的参数。n 是一个数字,表示第几个参数, 
# $#  传递给脚本或函数参数个数
# $*  传递给脚本或函数的所有参数
# $@  传递给脚本或函数的所有参数.被双引号(" ")包含时, 与 $*稍有不同
# $?  上个命令的退出状态, 或函数的返回值
# $$  当前shell进程ID。对于Shell脚本, 就是这些脚本所在的进程ID

echo "File Name: $0"
echo "First Parameter: $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

# $* 和 $@的区别
# $* 和 $@都表示传递给函数或脚本的所有参数, 不被引号(" ") 包含时, 都以 "$1" "$2" .. "$n" 的形式所输出所有参数
# 但是当他们被双引号(" ")包含时，"$*" 会将所有的参数作为一个整体，以"$1 $2 … $n"的形式输出所有参数；"$@" 会将各个参数分开，以"$1" "$2" … "$n" 的形式输出所有参数。

echo "\$*=" $*
echo "\"\$*\"=" "$*"
echo "\"\$@\"=" "$@"
echo "print each param from \$*"
for var in $*
do
    echo "$var"
done
echo "print each param from \$@"

for var in $@
do
    echo "$var"
done

echo "print each param from \"\$*\""
for var in "$*"
do
    echo "$var"
done
echo "print each param from \"\$@\""
for var in "$@"
do
    echo "$var"
done

