# Makefile to create README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and time of Make run: $(shell date)" >> README.md
	@echo "Number of lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "The guessing game script is a simple bash program where the user guesses the number of files in the current directory." >> README.md
	@echo "Run the game by using the command: bash guessinggame.sh" >> README.md
