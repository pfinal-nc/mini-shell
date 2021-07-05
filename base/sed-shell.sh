#! /usr/bin/zsh

# h 将模式空间保存到保持空间
#H将模式空间附加到保持空间
#g将保持空间复制到模式空间
#G将保持空间保存到模式空间
#x交换模式空间和保持空间的内容

# sed -n '/first/{
# h
# p
# n
# p
# g
# p
# }' test
# 添加一行
#sed -e 5a\newLine test

# 删除指定行
# sed '3d' test
# sed '3,$d' test
# 替换
# sed '2,4c No 2-4 number'

# 搜索
# nl /etc/passwd | sed '/root/p'
# nl /etc/passwd | sed -n '/root/p'
# 替换
# sed -i 's/\.$/\!/g' test

# sed -i '$a # This is a test' test

sed -e '4 a newline' test