#! /bash/bin -x

read -p "Enter any 3 numbers: " a b c

cal1=$(($a + $b * $c))
cal2=$(($a * $b + $c))
cal3=$(($c + $a / $b))
