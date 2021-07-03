
#! /usr/bin/zsh

#正则表达式
# gawk 'BEGIN{FS=","} /11/{print $1}' test
# if-else 语句
# gawk '{
#     if($1 > 20)
#     {
#         print $1,"-------"
#         x = $1*20
#         print x
#     }
#     else 
#     {
#         print $1,"====="
#         x = $1/2
#         print x
#     }
# }' test

# while 语句
# gawk '{
#     total = 0
#     i=1
#     while(i<4)
#     {
#         total+=$i
#         i++
#     }
#     print total,"===="
#     avg = total/3
#     print "Average:",avg
# }' test

# # do-while 语句
# gawk '{
# total=0
# i=1
# do
# {
# 	total+= $i
# 	i++
#     print $i
# }while(total < 150)
# print total }' test

# for

gawk '{
    total = 0
    for (i=1; i<4; i++) {
        total +=$i
    }
    avg = total/3
    print "Average:",avg
}' test