#! /usr/bin/zsh

# 使用内建变量
# NF 当前记录的字段数
# NR 到目前为止读的记录数值

#gawk '{print "hello world"}'

#下面的程序在每行开头输出行号，并在最后输出文件的总字段数
#gawk '{ total+=NF; print NR, $0 }END{ print "Total: ", total}'


# gawk 'BEGIN{FS=","; OFS="<-->"} {print $1,$2,$3}' data1 

# gawk 'BEGIN{print ARGC,ARGV[1]}' data1
# gawk 'BEGIN{print  ENVIRON["HOME"]; print  ENVIRON["PATH"]}'
# gawk 'BEGIN{FS=":"; OFS=":"} {print $1,$NF}' /etc/passwd 

# 处理数组
gawk 'BEGIN{capital["Illinois"] = "Springfield"; print capital["Illinois"]}'

# 正则表达式
gawk 'BEGIN{FS=","} $2=="data11"{print $1,$2,$3}' data1


# 处理数字值
gawk 'BEGIN{x=4; x=x*2+3; print x}'

# 遍历数组
gawk 'BEGIN{
    var["a"] = 1
    var["b"] = 2
    var["c"] = 3
    var["d"] = 4
    for( test in var)
    {
        print "Index:",test,"-- Value:",var[test]
    }
}'

print "-------"

# 删除数组变量

gawk 'BEGIN{
var["a"] = 1
var["g"] = 2
for (test in var)
{
	print "Index:",test," - Value:", var[test]
}
delete var["g"]
print "----"
for (test in var)
{
	print "Index;",test," - Value:", var[test]
}
}'