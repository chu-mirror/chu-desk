DEV_ENV = .dev-env
to_dev = . $(DEV_ENV)/bin/activate

.PHONY: dev-init dev-sync test

dev-init:
	@[ -d $(DEV_ENV) ] \
	  && echo "Already initialized virtual environment" \
	  || echo "Initializing virtual environment" \
	  && python -m venv $(DEV_ENV) \
	  && $(to_dev) && pip install pip-tools

dev-sync: dev-init
	@$(to_dev) && pip-compile \
	  && [ -f dev-requirements.txt ] && pip-sync dev-requirements.txt \
	  && pre-commit install

test:
	@$(to_dev) && python -m unittest

build-dist:
	$(to_dev) && python -m build
