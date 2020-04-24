# Variables

DOCKER_USERNAME = "docker_username"
GAME_IMAGE_NAME = "game_image_name"

# Targets
all: build

build: igniter-shell-go
	docker build -t $(DOCKER_USERNAME)/$(GAME_IMAGE_NAME):latest .
	@echo "Done build"

igniter-shell-go:
	git clone git@github.com:Gameye/igniter-shell-go.git
	- $(MAKE) -C igniter-shell-go clean
	- $(MAKE) -C igniter-shell-go build

upload:
	docker push $(DOCKER_USERNAME)/$(GAME_IMAGE_NAME):latest

.PHONY: all build upload