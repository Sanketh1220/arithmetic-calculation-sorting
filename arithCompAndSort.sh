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

for ((i=0; i <= $((${#CompArray[@]} - 2)); ++i))
do
	for ((j=((i + 1)); j <= ((${#CompArray[@]} - 1)); ++j))
   do
     if [[ ${CompArray[i]} -gt ${CompArray[j]} ]]
     then
     	#echo $i $j ${CompArray[i]} ${CompArray[j]}
      tmp=${CompArray[i]}
      CompArray[i]=${CompArray[j]}
     	CompArray[j]=$tmp         
	  fi
	done
done

count=0

i=3

while [ $i -ge 0 ]
do
	DescendingArray[$count]=${CompArray[i]}
	((count++))
	((i--))
done

echo "Descending order of reult array: ["${DescendingArray[@]}"]"
