#! /usr/bin/zsh

# 多个空格只保留一个
# sed '/./,/^$/!d' test

#删除开头的空白行
#sed '/./,$!d' test

#删除结尾的空白行
# sed '{
# :start
# /^\n*$/{$d; N; b start}
# }' test

# sed -n '{
# 1!G
# h
# $p
# }' $1

# 排除命令,使本来起作用的命令不起作用
# sed -n '/heade/!p' test

# 反转文本文件
# sed -n '{1!G ; h; $p}' test

# and 符号, 代表替换命令中的匹配模式,不管预定义模式是什么文本,都可以用 and 符号替换, and 符号会提取匹配替换命令中指定替换模式中的所有字符串
# echo "The pfinal" | sed 's/pf.*/"&"/g'

# #替换单独的单词
# echo "The System Administrator pfinal" | sed 's/\(System\) Administrator/\1 user/'

# #在长数字中插入逗号

# echo "1234567" | sed '{:start; s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/};t start'

# sed -n '{s/first/matched/; t; s/This is the/No match on/}' test

# 给文件中的行进行编号

# sed '=' test |sed 'N; s/\n/ /'


# sed '{
# :start $q
# N
# 11,$D
# b start
# }' test

# 重定向 sed 输出

factorial=1
counter=1
number=$1

while [ $counter -le $number ]
do
	factorial=$[ $factorial * $counter ]
	counter=$[ $counter + 1 ]
done

result=`echo $factorial | sed '{
:start
s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/
t start
}'`

echo "The result is $result"