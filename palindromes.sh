#!/bin/bash
function palindromes(){
number=$actual_number
reverse=0
zero=0
while [ $number !=  $zero ]
do
        n=`expr $number % 10 `
        reverse= $((($reverse * 10) + $n))
        number=`expr $number / 10`
done
if [ $reverse -eq $actual_number ]
then
        echo " $actual_number is a palindromes"
else
        echo "$actual_number is not a palindromes"
fi


}
read -p "Enter any number: " actual_number
palindromes
