#! /bash/bin -x

declare -A Computation
declare -a CompArray

read -p "Enter any 3 numbers: " a b c

cal1=$(($a + $b * $c))
cal2=$(($a * $b + $c))
cal3=$(($c + $a / $b))
cal4=$(($a % $b + $c))

Computation[cal1]=$cal1
Computation[cal2]=$cal2
Computation[cal3]=$cal3
Computation[cal4]=$cal4

echo "Dictionary of arithmetic computations: ["${!Computation[@]}"] : ["${Computation[@]}"]"

CompArray[0]=${Computation[cal1]}
CompArray[1]=${Computation[cal2]}
CompArray[2]=${Computation[cal3]}
CompArray[3]=${Computation[cal4]}

echo "Array of arithmetic computations: ["${CompArray[@]}"]"
