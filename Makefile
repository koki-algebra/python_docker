.PHONY: help
.DEFAULT_GOAL := help

JUPYTER_PORT := 8888

run: ## Run Python Script
	@rye run main

fmt: ## Format python code
	@rye run black ./src

lint: ## Lint python code
	@rye run flake8 ./src

jupyter: ## Run JupyterLab
	@rye run jupyter lab --port=${JUPYTER_PORT} --notebook-dir=./notebooks

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
