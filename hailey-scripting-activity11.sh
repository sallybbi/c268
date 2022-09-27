
#! /bin/bash


arr=(`cat file11.txt`)
l=${#arr[*]}
i=1
echo "the number with duplocates and unsort: "${arr[@]}
arr=( `echo "${arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '`)


echo "the numbers after sort -u: "${arr[@]}

swap=1
while ((swap == 1));do  #whil loop to sort the array from max to min
	i=1
	swap=0
	while ((i <= $((l-1)) )) ;do
		if ((arr[$((i-1))] < arr[$i])) ; then
			temp=${arr[$((i-1))]}
			arr[$((i-1))]=${arr[$i]}
			arr[$i]=$temp
			swap=1
		fi
		((i++))
	done
done
echo "the numbers sort with reverse order and without duplicate: "${arr[@]}


exit 0

