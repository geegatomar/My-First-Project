all:
	@$(RM) -f README.md	
	@echo "# Guessing Game" >> README.md
	@echo "\n\n" >> README.md
	@echo $(shell date) >> README.md
	@echo "\n\n" >> README.md
	@echo $(shell wc -l guessinggame.sh | cut -d' ' -f1) >> README.md
