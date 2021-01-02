#!/usr/bin/env bash
# File: guessinggame.sh

function numfiles {
    ls | wc -l
}

my_numfiles=$(numfiles)

echo "Guess the number of files in the folder Unix_project:"

check=0
read response

while [[ $check -eq 0 ]]
do

if [[ $response -gt $my_numfiles ]]
then
echo "The number you guessed is too high, please try again."
read response
elif [[ $response -lt $my_numfiles ]] && [[ $response -ge 0 ]]
then
echo "The number you guessed is too low, please try again."
read response
elif [[ $response -lt 0 ]]
then
echo "Your input should be a number greater or equal to 0"
read response
elif [[ $response -eq $my_numfiles ]]
then
echo "Congratulations you guessed the right number of files!"
break

fi
done

echo "Hdffgi"
