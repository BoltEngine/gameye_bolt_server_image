# Photon Bolt Docker image for Gameye

Basic Docker image used to run a Photon Bolt Server on Gameye Service.

## Useful links

- <https://docs.gameye.com/docs/getting-started>
- <https://docs.gameye.com/docs/using-the-igniter-tool>
- <https://github.com/Gameye/igniter-shell-go>

## Defined Environment Variables

Some environment variables are defined by the `Dockerfile` while building the docker image.
Those variables can be useful at some point.

### Target Folders

- `GE_DIRROOT`: Folder where the Game binaries and configuration files will be copied to. Default: `/bolt`.
- `GE_DIRTOOL`: Folder for the Tools. Default: `/bolt/tools`.
- `GE_DIRGAME`: Folder for the game binaries. Default: `/bolt/game`.
- `GE_DIRCONFIG`: Folder for the configuration files. Default: `/bolt/config`.
- `GE_BINROOT`: Default Unix folder for executables. Default: `/usr/local/bin`.

### Igniter Files

- `GE_IGNITERBIN`: Igniter binary file name. Default: `igniter-shell`.
- `GE_CONFIGFILE`: Igniter configuration YAML file name. Default: `config/main.yaml`.

### Game Files

- `GE_GAMEBIN`: Game binary file name. Default: `game.x86`.

## How to build your own image

This repository contains all the necessary files to configure, build and run a `Bolt Game Server` using Docker, that can later be deployed to `Gameye` service.

In order to get a working Docker image, follow the steps below:

1. Clone this repository into your machine.
2. Build a standalone version of your game. We recommend that you use `Headless Sample` as base, so you can start a server in `batchmode`. This build must follow the rules:
   1. Target Platform: `Linux`;
   2. Architecture: `x86`;
   3. Game executable binary name: `game.x86`. If you want to use other name, you need to rename the `GE_GAMEBIN` variable in the `Dockerfile` file.
3. Copy your game executable into the `build` folder.
4. Create the image:
   1. You can use the `Makefile` included to build the image (make sure to change the variables `DOCKER_USERNAME` and `GAME_IMAGE_NAME`):
      - `$ make build`.
5. Upload the image to Docker Hub:
   - `$ make upload`
