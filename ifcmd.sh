#!/bin/bash
echo "Number of arguments = $#"
if [[ $# -ge 1 ]]
then
   num=$1
   echo "The input parameter is $num"
   if [ "$num" -eq "$num" ] 2>/dev/null;
   then
      modulo=$(($num % 2))
      if [[ $modulo -eq 0 ]]
      then
         echo "Input number $num is even."
      else
         echo "Input number $num is odd."
      fi
   else
      echo "Input value $num is not a number"
   fi
else
   echo "No number has been input."
fi
echo "Bye"

