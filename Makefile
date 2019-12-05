NAME := smiler

.PHONY: deps
deps:
	pip install -r requirements-dev.txt

.PHONY: lint
lint:
	pylint $(NAME)

.PHONY: build
build:
	python setup.py sdist bdist_wheel

.PHONY: install
install:
	pip install -e .

.PHONY: uninstall
uninstall:
	pip uninstall $(NAME)

.PHONY: publish
publish:
	twine upload dist/*

.PHONY: clean
clean:
	rm -rf build/ dist/ *.egg-info/
	find . -type d -name __pycache__ -exec rm -rf '{}' +
