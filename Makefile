
all: build

build: igniter-shell-go
	docker build -t ramonmelo/boltserver:latest .

igniter-shell-go:
	git clone git@github.com:Gameye/igniter-shell-go.git
	cd igniter-shell-go
	make

.PHONY: all build