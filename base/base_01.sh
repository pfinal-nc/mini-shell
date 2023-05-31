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