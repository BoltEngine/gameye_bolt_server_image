# Variables

DOCKER_USERNAME = ""
GAME_IMAGE_NAME = ""
VERSION = "latest"

# Targets
all: build

build: prepare 
	docker build -t $(DOCKER_USERNAME)/$(GAME_IMAGE_NAME):$(VERSION) .
	@echo "Done build"

prepare: igniter-shell-go/bin
	@echo "Done build Igniter"

igniter-shell-go/bin:
	git submodule init 
	git submodule update
	- $(MAKE) -C igniter-shell-go clean
	- $(MAKE) -C igniter-shell-go build

upload:
	docker push $(DOCKER_USERNAME)/$(GAME_IMAGE_NAME):$(VERSION)

.PHONY: all build upload