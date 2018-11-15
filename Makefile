name := raicheff/heroku-cli

all: build

build:
	docker build --tag $(name) $(shell pwd)

publish:
	docker push $(name):latest

install:
	docker pull $(name):latest
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 heroku $(DESTDIR)$(PREFIX)/bin/heroku
