#! /bin/bash -x

declare -A countArr
echo Enter number of turn
read numberOfTurn

head=1;
tail=0;
countHead=0;
countTail=0;
for (( i=0; i<=numberofTurn; i++ ))
do

Flip=$((RANDOM%2))

if [ $Flip -eq $head ]
then
	countHead=$(( $countHead+1 ))
        echo Head
else
	 countTail=$(( $countTail+1 ))
         echo Tail
fi
done

countArr[((countHead))]=$countHead
countArr[((countTail))]=$countTail

echo "Number of head " ${countArr[countHead]}
echo "Number of Tail " ${countArr[countTail]}
percentageHead=$(($countHead*100/$numberOfTurn))
percentageTail=$(($countTail*100/$numberOfTurn))
