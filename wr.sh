#!/bin/bash
echo "Number of arguments = $#"
if [[ $# -ge 3 ]]
then
   lineoftext=$1
   echo "The first parameter is $lineoftext"
   foldername=$2
   echo "The second parameter is $foldername"
   if [[ -d $foldername ]]
   then
      echo "The folder already exists."
   else
      num=$3
      echo "The third parameter is $num"
      if [ "$num" -eq "$num" ] 2>/dev/null;
      then
         if [[ $num -ge 2 && $num -le 8 ]] 
         then
            echo "Input number $num is between 2 and 8, so it is acceptable."
            # WRITE THE LINE OF TEXT INTO $num TEXT FILES IN THE NEWLY CREATED FOLDER
            echo "Have to create the folder and create $num text files and write the first param"
            mkdir "$foldername"
            if [[ -d $foldername ]]
            then
               echo "Folder created successfully."
            else
               echo "Folder did not get created."
               echo "Bye"
               exit 0
            fi
            for i in `seq 1 $num`;
            do
               echo $lineoftext >> $foldername/file$i.txt
            done
         else
            echo "Input number $num is not between 2 and 8, not acceptable."
         fi
      else
         echo "Input value $num is not a number"
      fi
   fi
else
   echo "Not enough parameters."
fi
echo "Bye"

