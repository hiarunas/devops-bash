#!/bin/bash
echo "Number of arguments = $#"
if [[ $# -ge 1 ]]
then
   foldername=$1
   echo "The input parameter is $foldername"
   if [ -d $foldername ]
   then
      echo "The folder $foldername exists."
      ls -al $foldername
   else
      echo "The folder $foldername does not exist"
   fi
else
   echo "No parameter has been input."
fi
echo "Bye"

