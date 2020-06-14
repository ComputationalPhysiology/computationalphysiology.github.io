.PHONY: clean clean-ipynb clean-pyc clean-build docs help upgrade
.DEFAULT_GOAL := help

define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
	match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
	if match:
		target, help = match.groups()
		print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT

BROWSER := python -c "$$BROWSER_PYSCRIPT"

help:
	@python -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)

docs: ## Build book
	jupyter-book build docs

clean: clean-build clean-pyc clean-ipynb ## remove all build, test, coverage and Python artifacts

clean-build: ## remove build artifacts
	rm -fr docs/_build/

clean-pyc: ## remove Python file artifacts
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-ipynb:  ## remove notebook artifacts
	find . -name '.ipynb_checkpoints' -exec rm -fr {} +

show:
	open docs/_build/html/index.html

