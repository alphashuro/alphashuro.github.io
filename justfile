install:
    bundle install

build: install
    bundle exec jekyll build

run: build
    bundle exec jekyll serve
