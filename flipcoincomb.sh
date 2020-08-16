#!/bin/bash -x

read -p "how much time you flip the coin " number
read -p "How many coins " coin
declare -A result

headCount=0
tailCount=0
headHead=0
tailHead=0
HeadTail=0

function coin() {
for ((i=1; i<=$number; i++ ))
do
s=""
for ((j=0; j<$coin; j++ ))
do
        resultk=$(( RANDOM % 2 ))
        if [ $result -eq 1 ]
        then
        s=$s"H"
                headCount=$(( $headCount =1 ))
        else
        s=$s"T"
        tailCount=$(( $tailCount + 1 ))
        fi
done
echo final key : $s
result["$s"]=$(( ${result["$s"]} + 1 ))
done
}
coin
