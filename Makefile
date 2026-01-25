.PHONY: venv install serve clean commit-and-push

venv:
	@echo "Creating virtual environment with uv..."
	uv venv

install: venv
	@echo "Installing dependencies with uv..."
	uv pip install -e .

serve: install
	@echo "Starting mkdocs development server..."
	uv run mkdocs serve -f mkdocs-site/mkdocs.yml

clean:
	@echo "Cleaning up generated files..."
	rm -rf .venv site uv.lock

push:
	@echo "Committing changes..."
	git add .
	git commit -m "docs: update docs."
	@echo "Pushing changes to remote..."
	git push