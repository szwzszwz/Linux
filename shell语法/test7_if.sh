#! /bin/bash
a=3
b=4
if [ $a -eq 1 ]
then 
    echo ${a}等于1
elif [ $a -eq 2 ] 
then
    echo ${a}等于2
elif [ $a -eq 3 ]
then
    echo ${a}等于3
else
    echo 其他
fi


case $a in
    1)
	echo ${a}等于1
	;;
    2)	
	echo ${a}等于2
	;;
    3)
	echo ${a}等于3
	;;
    *)	
	echo 其他
	;;
esac


if expr 3 '==' 3
then
    echo "hhh"
fi
# 输出结果为：
# 1
# hhh
