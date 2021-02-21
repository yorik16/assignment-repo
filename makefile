README.md: guessinggame.sh 
	echo "# Guessing Game" > README.md
	echo "$$(date)" >> README.md
	echo "the code has the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
