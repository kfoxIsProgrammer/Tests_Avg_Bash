#!/bin/bash

read -p "Enter your  Assignment mark  (0-40): " assign
while [ $assign -lt 0 ] || [ $assign -gt 40 ]; do
echo -e "You've entered a number out of range \n"
read -p "Enter your  Assignment mark  (0-40): " assign
done

read -p "Enter your test1 mark (0-15): " test1
while [ $test1 -lt 0 ] || [ $test1 -gt 15 ]; do
echo -e "You've entered a number out of range \n"
read -p "Enter your test1 mark (0-15): " test1
done


read -p "Enter your test2 mark (0-15): " test2
while [ $test2 -lt 0 ] || [ $test2 -gt 15 ]; do
echo -e "You've entered a number out of range\n"
read -p "Enter your test2 mark (0-15): " test2
done



read -p "Enter your final exam mark (0-30): " exam
while [ $exam -lt 0 ] || [ $exam -gt 30 ]; do
echo -e "You've entered a number out of range\n"
read -p "Enter your final exam mark (0-30): " exam
done


total=$(($assign+$test1+$test2+$exam)) >/dev/null 2>&1



if [ $assign -ne $assign ] >/dev/null 2>&1 || [ $test1 -ne $test1 ] >/dev/null 2>&1 || [ $test2 -ne $test2 ] >/dev/null 2>&1 || [ $exam -ne $exam ] >/dev/null 2>&1

then
echo -e "you have not entered a valid number\n "
./lab8
else
case $total in

 [0-9]|[1-4][0-9])echo "Your final mark is an: F";;
 [5][0-2])echo "Your final mark is an: D-";;
 [5][3-6])echo "Your final mark is an: D";;
 [5][7-9])echo "Your final mark is an: D+";;
 [6][0-2])echo "Your final mark is an: C-";;
 [6][3-6])echo "Your final mark is an: C";;
 [6][7-9])echo "Your final mark is an: C+";;
 [7][0-2])echo "Your final mark is an: B-";;
 [7][3-6])echo "Your final mark is an: B";;
 [7][7-9])echo "Your final mark is an: B+";;
 [8][0-4])echo "Your final mark is an: A-";;
 [8][5-9])echo "Your final mark is an: A";;
 [9][0-9]|[1][0][0])echo "Your final mark is an: A+";;
 esac
fi
