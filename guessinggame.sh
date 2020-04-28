#!/bin/bash/env
# File: guessinggame.sh

guessinggame()
{

echo "HEY! Let's play a game! "
echo "You need to guess the number of files in the current directory."
echo "If your answer is wrong, I will give you a clue and another chance. If its right, you win !!" 
echo -e "\nHow many files are in the current directory?"
read files_guessed


files_in_directory=$(ls | wc -l)


while [[ $files_in_directory != $files_guessed ]]
do
	echo "Oops, that's wrong"
	if [[ $files_in_directory -gt $files_guessed ]]
	then
		echo "The answer is larger than $files_guessed"
	else
		echo "The answer is smaller than $files_guessed" 
	fi
		echo	
		echo "Take another guess: "
		read files_guessed
done

echo -e "\nCONGRATULATIONS! You have guessed it right! Answer is $files_in_directory "

}

#source guessinggame.sh
guessinggame

