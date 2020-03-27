#!/bin/bash

set -e

CONFIG="$1"
shift

set +e # continue on error

/usr/local/bin/igniter-shell launch --config-file /home/steam/config/$CONFIG.yaml --emulate-tty "$@" -- /home/steam/GAMEDIRECTORY/GAMEDIRECTORY/GAMEEXECUTABLE