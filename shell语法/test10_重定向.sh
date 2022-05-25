#! /bin/bash

:<<1
exit命令用来退出当前shell进程，并返回一个退出状态；使用$?可以接收这个退出状态。
exit命令可以接受一个整数值作为参数，代表退出状态。如果不指定，默认状态值是 0。
exit退出状态只能是一个介于 0~255 之间的整数，其中只有 0 表示成功，其它值都表示失败。


if [ $# -ne 1 ] # 如果传入参数个数等于1，则正常退出；否则非正常退出
then 
	echo "arguments not void"
	exit 1
else
	echo "argments valid"
	exit 0
fi

echo $0 # 输出文件名
1


:<<2
# -e 开字符串转义功能，\c 不换行
echo -e "Hello \c" > output.txt # 将stdout重定向到output.txt中
echo "World" >> output.txt # 将字符串追加到output.txt中
read str < output.txt # 从output.txt中读取字符串,只读一行 
echo $str # 输出结果：Hello World：

2

read a
read b
echo $(expr "$a" + "$b")


