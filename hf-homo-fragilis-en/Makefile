.PHONY: setup lint test
setup:
	mamba env create -f environment.yml || conda env create -f environment.yml
	@echo "conda activate hf"

lint:
	black src && isort src

test:
	pytest -q
