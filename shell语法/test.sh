#! /bin/bash

echo "Hello World!"

# 这里是注释

:<<EOF
这里是多行注释
EOF

# 定义变量,下面三种定义方式相同,中间不能有空格
name1='szwz'
name2="szwz"
name3=szwz

name=szwz
echo ${name}
echo $name
echo ${name}acwing
echo "${name3}AcWing"

# readonly 只读变量，不可以更改和删除 类似于c语言的const
name4=yxc
readonly name4
# 上下两种方法都可以
# declare -r name4
name4=abc # 此时此刻，如果想改变name4的变量，就会报错 name4:readonly variable

# unset 可以删除变量
echo ${name3}no-unset
unset name3
echo ${name3}unset # 删除以后变量消失，再次输出变量的时候会无法输出，但是不会报错

:<<i
变量类型：
    1。自定义变量（局部变量）
    子进程不可以访问的变量    bash命令可以进入子进程，exit退出子进程
    2。环境变量（全局变量）
    子进程可以访问的变量
i
# 自定义变量改成环境变量
:<<i
acs@9e0ebfcd82d7:~$ name=yxc  # 定义变量
acs@9e0ebfcd82d7:~$ export name  # 第一种方法
acs@9e0ebfcd82d7:~$ declare -x name  # 第二种方法
i
# 环境变量改成自定义变量
:<<i
acs@9e0ebfcd82d7:~$ export name=yxc  # 定义环境变量
acs@9e0ebfcd82d7:~$ declare +x name  # 改为自定义变量
i

# 字符串
:<<i
字符串
    字符串可以用单引号，也可以用双引号，也可以不用引号。
    单引号与双引号的区别：
        单引号中的内容会原样输出，不会执行、不会取变量；
        双引号中的内容可以执行、可以取变量；
i
name5=hpz
echo 'hello,$name \"hh\"'  # 单引号字符串，输出 hello, $name \"hh\"
echo "hello,$name \"hh\""  # 双引号字符串，输出 hello, yxc "hh"

# 获取字符串长度
name6="yyxxcc"
echo ${#name6} # 6

# 提取子串
echo ${name6:0:5} # yyxxc

