#! /usr/bin/zsh
# 函数
# gawk '
# function myprint()
# {
#     printf "%-16s - %s\n", $1, $4
# }

# BEGIN{FS="\n"; RS=""}
# {
# 	myprint()
# }' test

# 多个表达式的字符串值之间用输出字符段分割符分开

# gawk '{ print $1, $2}' test

#输出字段分割符与输出记录分割符存储在内键变量OFS与ORS中
#初始化情况下,OFS与ORS被设置成一个空格符与一个换行符 但他们的值可以在任何时候改变
#下面这个程序打印每一行的第1第2个字段,字段之间用分号分开 在每一行的第二个字段之后输出两个换行符

# gawk 'BEGIN { OFS = ":"; ORS = "\n\n" }
#       { print $1, $2 }' test

#下面这个程序拼接第1个与第2个字段，两个字段之间没有输出字段分隔符插入
# gawk '{ print $1 $2}' test

# gawk '{ print }'
# gawk '{ print $0 }'

# 输出空行

# gawk '{ print "" }' test

#printf 用于产生格式化输出

# printf 不会自动换行, 需要手动添加\n
# 格式说明符以%开始 以转换字符结束
# - 表达式在它的域内左对齐, 没有则右对齐
# width 为了达规定的宽度 必要时填充空格
# .prec 字符串最大宽度, 或十进制数的小数部分的位数

# gawk '{ printf ("Name:%-10sAge:%-5dWeight:%7.2f\n", $1,$2,$3)}' test

# 输出到文件
# 重定向运算符>与>> 用于将输出重定向到文件 文件名必须用双引号括起来
# gawk '{ print($1, $3) > ($3 > 100 ? "bigpop" : "smallpop") }' test

#输出到管道
#print的输出将以管道的方式传递给command

# Canada 3852
# China 3705
# USA 3615
# Brazil 3286

gawk '{ pop[$1]+=$2 }
END{ for(c in pop) printf("%15-s%6d\n", c, pop[c]) | "sort -nk 2"; close("sort -nk 2") }' test


#关闭文件与管道
#语句close(expression)关闭一个文件或管道，文件或管道由expression指定。
#expression的字符串值必须与最初用于创建文件或管道的字符串值相同。
#在同一个程序中，如果你写了一个文件，而待会儿想要读取它，那么就需要调用close。
#某一时刻，同时处于打开状态的文件或管道数量最大值由实现定义。

close("sort -nk 2")