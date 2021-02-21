#!/usr/bin/env bash
# File: guessinggame.sh


function guessg {
	ls -la . | grep ^- | wc -l
}

function prompt {
	echo "How many files are there in the current directory?"
}

prompt
read guess


while [[ $guess -ne $(guessg) ]]
do
	if [[ $guess -gt $(guessg) ]]
	then
		echo "guess is too high, please try again"
	elif [[ $guess -lt $(guessg) ]]
	then
		echo "guess is too low, please try again"
	fi
	prompt
	read guess
done


if [[ $guess -eq $(guessg) ]]
then
	echo "Congratulations!!"
fi


