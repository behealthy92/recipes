.PHONY: serve clean push


serve:
	@echo "Starting mkdocs development server..."
	uv run mkdocs serve -f mkdocs-site/mkdocs.yml --livereload

clean:
	@echo "Cleaning up generated files..."
	rm -rf .venv site uv.lock

push:
	@echo "Committing changes..."
	git add .
	git commit -m "docs: update docs."
	@echo "Pushing changes to remote..."
	git push