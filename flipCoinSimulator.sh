

#!bin/bash
flip=$((RANDOM%2));
head=0;
tail=0;
while [ $head -ne 22 -o $tail -ne 22 ]
do
    if [[ $flip -eq 0 ]] 
    then
        ((tail++));
        tailarr=[$tail];
    else
        ((head++));
        headarr=[$head];
    fi
    if [[ $head -eq 22 ]]
    then
        echo "Tail= ${tailarr[@]}";
        echo "Head= ${headarr[@]}";    
        echo "Head won";

        break;
    elif [[ $tail -eq 22 ]]
    then    
        echo "Tail= ${tailarr[@]}";
        echo "Head= ${headarr[@]}";
        echo "Tail won";
        break;
    fi
    flip=$((RANDOM%2));  
done
if [[ $head -eq $tail ]]
    then    
        echo "Tail= ${tailarr[@]}";
        echo "Head= ${headarr[@]}";
        echo "Match Tie";
        break;
    fi

