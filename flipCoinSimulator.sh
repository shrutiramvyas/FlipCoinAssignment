

#!bin/bash
flip=$((RANDOM%2));
echo $flip
head=0;
tail=0;
while [ $head -ne 22 -o $tail -ne 22 ]
do
    if [[ $flip -eq 0 ]] 
    then
        ((tail++));
        echo "tail : $tail"
    else
        ((head++));
        echo "head : $head"
    fi
    if [[ $head -eq 22 ]]
    then    
        echo "Head won";
        break;
    elif [[ $tail -eq 22 ]]
    then
        echo "Tail won";
        break;
    fi
    flip=$((RANDOM%2));  
done

