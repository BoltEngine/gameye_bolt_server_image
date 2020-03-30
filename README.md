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
- `GE_CONFIGFILE`: Igniter configuration YAML file name. Default: `config.yaml`.
- `GE_ARGFILE`: Igniter arg YAML file name. Default: `arg.yaml`.

### Game Files

- `GE_GAMEBIN`: Game binary file name. Default: `game.x86`.
- `GE_DEFAULTGAMEARGS`: Default arguments to run the game binary. Default: `-batchmode -nographics -logFile`.

### Entrypoint Script

- `GE_ENTRYPOINTSCRIPT`: Entrypoint script name. Default: `docker-entrypoint.sh`.

## How to build your own image

1. Clone this repository into your machine.
2. Copy your game executable into the `build` folder. If it does not exist, create one on the root folder.
3. Create the image:
   - `docker build -t <username>/<game name>:latest .`
