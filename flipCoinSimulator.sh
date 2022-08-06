#!bin/bash

head=0;
tail=0;
for (( i=0; i<=10;i++ ))
do 
	flip=$((RANDOM%2))
	if [ $flip -eq 0 ]
	then
		((head++))
	else
		((tail++))
	fi
done
echo "No of Head : $head"
echo "No of Tail : $tail"