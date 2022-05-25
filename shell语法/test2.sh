#! /bin/bash

echo "文件名："$0
echo "第一个参数："$1
echo "第二个参数："$2
echo "第三个参数："$3
echo "第四个参数："$4
echo $* # 1 2 3 4 
echo $@ # 1 2 3 4 
echo $$ # 当前进程ID为378
echo $(ls)
# 上下两个命令相同
echo `ls`

:<<i
然后执行该脚本：
acs@9e0ebfcd82d7:~$ chmod +x test.sh 
acs@9e0ebfcd82d7:~$ ./test.sh 1 2 3 4
文件名：./test.sh
第一个参数：1
第二个参数：2
第三个参数：3
第四个参数：4

其他参数相关变量
$#  代表文件传入的参数个数，如上例中值为4,不包括$0
$*  由所有参数构成的用空格隔开的字符串，如上例中值为"$1 $2 $3 $4"
$@  每个参数分别用双引号括起来的字符串，如上例中值为"$1" "$2" "$3" "$4"
$$  脚本当前运行的进程ID
$?  上一条命令的退出状态（注意不是stdout，而是exit code）。0表示正常退出，其他值表示错误，获取返回值
$(command)  返回command这条命令的stdout（可嵌套）,command代指命令行的命令，获取输出
`command`   返回command这条命令的stdout（不可嵌套）

i
