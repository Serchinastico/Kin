# Executables
ANTLR = antlr
PIP = pip

# Misc
.DEFAULT_GOAL = help
.PHONY        : help build up start down logs sh composer vendor sf cc test

help: ## Outputs this help screen
	@grep -E '(^[a-zA-Z0-9\./_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m##/[33m/'

build: ## Builds the Docker images
	@echo "Compile grammar"
	cd kin/grammar && $(ANTLR) PBXProj.g4 -Dlanguage=Python3
	@echo "Install kin locally"
	$(PIP) install -e .

test: ## Runs all tests
	./tests/tester.py