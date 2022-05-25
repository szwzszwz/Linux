#! /bin/bash
for i in a 2 cc
do
	echo $i
done

for file in `ls` # 循环输出ls命令的值
do 
	echo $file
done

# 循环输出1~10
for i in $(seq 1 10)
do 
	echo $i
done 

# 循环输出30~0
for i in {30..0}
do 
	echo $i
done

# 输出1~10
for ((i=1;i<=10;i++))
do 
	echo $i
done


:<<i
# 文件结束符为ctrl+d，输入文件结束符的时候read指令返回false
while read name # 读取一个字符，输出一个字符
do
	echo $name
done
i

# until..do..done
until [ "${word}" == "yes" ] || [ "${word}" == "YES" ]
do
	read -p "Please input yes/YES to stop this program:" word
done

# break 不会跳出case循环，但是会跳出for和while循环
# 输入字符，如果不为文件结束符ctrl+d，输出1~7，直到文件结束符才结束
while read name
do 
	for((i=1;i<=10;i++))
	do
		case $i in
		8)
			break
			;;
		*)
			echo $i
			;;
		esac
	done
done


# continue跳出当前循环
# 输出1~10的所有奇数
for ((i=1;i<=10;i++))
do
	if [ `expr $i % 2` -eq 0 ]
	then
		continue
	fi
	echo $i
done
