.PHONY: css css-watch build serve clean

css:
	./tailwindcss -i _css/input.css -o assets/css/style.css --minify

css-watch:
	./tailwindcss -i _css/input.css -o assets/css/style.css --watch

build: css
	$(HOME)/.local/share/gem/ruby/3.4.0/bin/bundle exec jekyll build

serve: css
	$(HOME)/.local/share/gem/ruby/3.4.0/bin/bundle exec jekyll serve

clean:
	rm -rf _site .jekyll-cache assets/css/style.css
