.PHONY: help
.DEFAULT_GOAL := help

JUPYTER_PORT := 8888

run: ## Run Python Script
	@poetry run python src/main.py

jupyter: ## Run JupyterLab
	@poetry run jupyter lab --port=${JUPYTER_PORT} --notebook-dir=./notebooks

install: ## Install python packages
	@poetry install --no-root

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
