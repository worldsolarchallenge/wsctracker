DOCKER_TAG=wsctracker:latest

.PHONY: build run all

all: build

build:
	docker buildx build -t $(DOCKER_TAG) .

run: all
	docker run --rm -p 8080:8080 -it $(DOCKER_TAG)