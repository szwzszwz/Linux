#! /bin/bash

:<<i
read命令用于从标准输入中读取单行数据。当读到文件结束符时，exit code为1，否则为0。

参数说明

-p: 后面可以接提示信息
-t：后面跟秒数，定义输入字符的等待时间，超过等待时间后会自动忽略此命令
i
read -p "What's your name?" -t 5 name

echo Hello, $name

# 显示普通字符串
echo "hello world"
echo hello world

# 显示转义字符
echo "\"Hello AC Terminal\""  # 注意只能使用双引号，如果使用单引号，则不转义
echo \"Hello AC Terminal\"  # 也可以省略双引号

# 显示变量
name=yxc
echo "My name is $name"

# 显示换行
echo -e "Hi\n"  # -e 开始转义
echo "acwing"

echo -e "Hi,\c"  # -e 开始转义  \c表示不换行
echo "acwing"

# 显示结果定向至文件
echo "Hello World" > output.txt  # 将内容以覆盖的方式输出到output.txt中

# 原样输出字符串，不进行转义或取变量(用单引号)
name=acwing
echo '$name\"'

# 显示命令的执行结果
echo `date`  # `这个符号可以截取命令结果
# 输出结果：
Sun Apr 17 09:02:09 CST 2022

echo "-----------------------------------------------------"

# printf命令用于格式化输出，类似于C/C++中的printf函数。默认不会在字符串末尾添加换行符。

printf "%10d.\n" 123
printf "%-10.2f.\n" 123.123321  # 占10位，保留2位小数，左对齐
printf "My name is %s\n" "szwz"
printf "%d * %d = %d\n" 2 3 `expr 2 \* 3` # 表达式的值作为参数 2 * 3 = 6



