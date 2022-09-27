#! /bin/bash

array=()
i=1

while (( i<6 ))
do
echo "input number"
read integers

array+=($integers)
((i++))
done
echo ${array[@]}
	
echo "Would you like to insert more integers? True or False"
read reply 

#if ((reply="true")) 
#arracy+=($integer)
#((i++))
#echo "Enter integer 6"
#exit 1

while (( $reply== "true" && $i< "11"))
do 	
echo "Enter integer"
read integers

done

array+=($integers)
((i++))

echo "Would you like to insert more integers? True or False"
read reply

done

echo ${array[@]}

exit 0
