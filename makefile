.PHONY: all README.md myProg 
all: README.md myProg
README.md: guessinggame.sh
	touch README.md
	echo "# Guess the number of files" > README.md
	echo "<br /> The number of lines in our program are:" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "<br /> Date: " >> README.md
myProg:
	
	date >> README.md
clean:
	rm README.md
