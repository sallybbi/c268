#!/bin/sh
echo "Please input your password"
read password

#Checks password length
if ((${#password} < 8));
then
	echo "Not enough characters."
	exit 1
fi

#Checks password number
if [[ !($password =~ [0-9]) ]];
then
	echo "Need numerical value."
	exit 1
fi

#checks password contain lower letter
if [[ !($password =~ [a-z]) ]];
then
	echo "need lower letter"
	exit 1
fi

#Check paswword contain upper letter
if [[ !($password =~ [A-Z]) ]];
then
	echo "need upper letter"
	exit 1
fi


#Checks password for both lower and uppercase
echo "Password accepted."


exit 0
