#!/bin/bash -x

read -p "Please enter 3 Numbers as input separated by a space before hitting enter : " number1 number2 number3
echo Number 1 \(a\) : $number1 --- Number 2 \(b\) : $number2 ---  Number 3 \(c\) : $number3


#Using BODMASS Rule for all calculations
solution1=$(($number1+$(($number2*$number3))))
problem1='a + b * c = '
echo "$problem1$solution1"

solution2=$(($number3+$(($number1*$number2))))
problem2='a * b + c = '
echo "$problem2$solution2"


