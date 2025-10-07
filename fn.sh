#!/bin/bash
echo "Number of arguments = $#"
if [[ $# -ge 1 ]]
then
   num=$1
   echo "The input parameter is $num"
   if [[ "$argument" -eq "$argument" ]]
   then
      numplus3=$(($num + 3))
      echo "Input number $num plus 3 is $numplus3."
   else
      echo "Input value $num is not a number"
   fi
else
   echo "No number has been input."
fi
echo "Bye"

