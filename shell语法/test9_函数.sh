#! /bin/bash

# 函数
func() {
	name=szwz
	echo "hello $name"
	return 123
}

output=`func` # 接收输出
ret=$? # 接收返回值

echo "output1 = $output"  # output = hello szwz
echo "return1 = $ret"  # return = 123

func() {
	if [ $1 -le 0 ]
	then
		echo 0
		return 0
	fi
	
	sum=$(func `expr $1 - 1`)
	echo $(expr $sum + $1)
}
echo $(func 100)

func() {
	local name=szwzszwz # 函数的局部变量，作用范围仅在当前函数内
	echo $name
}

func
echo $name # 由于name是局部变量，在函数体外部无法输出
