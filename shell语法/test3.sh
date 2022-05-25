#! /bin/bash

# 数组：数组中可以存放多个不同类型的值，只支持一维数组，初始化时不需要指明数组大小。数组下标从0开始。

# 数组的定义
array=(1 abc "def" yxc)
# 上下两种赋值方式一样
array2[0]=1
array2[1]=abc
array2[2]="def"
array2[3]=yxc

echo ${array[0]}
echo ${array2[1]}

# 读取整个数组
echo ${array[@]}
echo ${array2[*]}

# 求数组长度，已用的长度而不是下标
echo ${#array[@]}
echo ${#array2[@]}
