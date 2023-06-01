#! /bin/sh

# 字符串
# 字符串是shell编程中最有用的数据类型,字符串可以用单引号,也可以用双引号,也可以不用引号
# 拼接字符串
str1='i'
str2='love'
str3='you'

echo $str1 $str2 "$str3"
echo $str1$str2$str3;

# 获取字符串长度
str='i love you';
echo ${#str}

# 截取字符串
str='i love you'
echo ${str::1} # 从第1个截取到末尾，注意从0开始
echo ${str:2:2}  # 从第2个截取2个
echo ${str:0}   # 全部截取
echo ${str:-3}  # 负数无效

 

# 数组
# bash支持一维数组（不支持多维数组），并且没有限定数组的大小。类似与C语言，数组元素的下标由0开始编号。获取数组中的元素要利用下标，下标可以是整数或算术表达式，其值应大于或等于0。

array=("a" "b" "c" "d")
echo ${array[2]} # 获取下标为2的元素
echo ${array[*]} # 读取所有元素
echo ${array[@]} # 读取所有元素

echo ${#array_name[*]} #获取数组长度
echo ${#array_name[@]} #获取数组长度
echo ${#array_name[1]} #获取数组中单个元素的长度