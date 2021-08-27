#!/bin/bash 

fahren(){
cel=$yourValue
far=`echo "scale=4; $cel * 1.8 + 32 " | bc `
echo "--- Result ----"
echo  $yourValue " deg cel:" $far  "deg Fah"
}


cel(){
fa=$yourValue
cel=`echo "scale=4; ($fa - 32)/1.8 " | bc `
echo "--- Result ----"
echo $yourValue" deg Fah:" $cel "deg Cel"
}
echo "-----------Enter Your Choice-----------";
echo " 1 -- Fahrenheit to Celsius" 
echo " 2 -- Celsius to Fahrenheit"

optionOne=1 ;
optiontwo=2;

read -p "Enter Your Choice: " yourChoice
read -p "Enter Your value: " yourValue

case $yourChoice in
        $optionOne)
                cel
                ;;
        $optiontwo)
                fahren
		;;
	 *)
                echo "Plese inter valid choice";
                ;;
esac
