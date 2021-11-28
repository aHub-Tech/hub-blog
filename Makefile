install:
	cd docs && bundle install

serve:
	cd docs && bundle exec jekyll serve --watch --incremental --livereload