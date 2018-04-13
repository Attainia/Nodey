HELL := /bin/bash
NAME = Attainia/nodey
VERSION = 1.0.0

.PHONY: docker
docker:
	@docker build --rm=true -t $(NAME):$(VERSION) ./
	@docker tag $(NAME):$(VERSION) $(NAME):latest

.PHONY: docker-nocache
docker-nocache:
	@docker build --no-cache=true --rm=true -t $(NAME):$(VERSION) ./
	@docker tag $(NAME):$(VERSION) $(NAME):latest
	
