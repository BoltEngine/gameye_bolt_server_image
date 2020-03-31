
all: build

build: igniter-shell-go
	docker build -t ramonmelo/boltserver:latest .
	@echo "Done build"

igniter-shell-go:
	git clone git@github.com:Gameye/igniter-shell-go.git
	- $(MAKE) -C igniter-shell-go clean
	- $(MAKE) -C igniter-shell-go build

.PHONY: all build