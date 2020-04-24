#!/bin/bash

set -e # suppress errors
CONFIG=$1
shift
set +e # restore erros

echo "Config file: $CONFIG"
echo "Game executable: $GE_DIRGAME/$GE_GAMEBIN"

exec igniter-shell launch --config-file $GE_DIRCONFIG/$CONFIG.yaml --emulate-tty "$@" -- $GE_DIRGAME/$GE_GAMEBIN