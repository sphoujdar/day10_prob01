#!/bin/bash -x

read -p "Please enter 3 Numbers as input separated by a space before hitting enter : " number1 number2 number3
echo Number 1 \(a\) : $number1 --- Number 2 \(b\) : $number2 ---  Number 3 \(c\) : $number3

declare -A results

#Using BODMASS Rule for all calculations
solution1=$(($number1+$(($number2*$number3))))
problem1='a + b * c = '
echo "$problem1$solution1"

solution2=$(($number3+$(($number1*$number2))))
problem2='a * b + c = '
echo "$problem2$solution2"

solution3=$(($number3+$(($number1/$number2))))
problem3='c + a / b = '
echo "$problem3$solution3"

solution4=$(($number3+$(($number1%$number2))))
problem4='a % b + c = '
echo "$problem4$solution4"


results[problem1]=$solution1
results[problem2]=$solution2
results[problem3]=$solution3
results[problem4]=$solution4

declare -a array_results
count=0

for result in ${results[@]}; do
	array_results[$count]=$result
	((count+=1)) ; done

echo Array before Sorting : ${array_results[@]}

for index1 in `seq 0 $((${#array_results[@]}-1))` ; do
	for index2 in `seq 0 $((${#array_results[@]}-1))` ; do
		if [ $((${array_results[$index1]})) -gt $((${array_results[$index2]})) ] ; then
			temp=${array_results[$index1]}
			array_results[$index1]=${array_results[$index2]}
			array_results[$index2]=$temp
		fi
	done
done

echo Array after Sorting : ${array_results[@]}



