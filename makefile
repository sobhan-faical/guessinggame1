.PHONY: all FORCE

all: README.md

README.md: guessinggame.sh FORCE
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Generated on: $$(date '+%Y-%m-%d %H:%M:%S %Z')" >> README.md
	@echo "" >> README.md
	@echo "Lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

FORCE:
