#!/bin/bash

set -e # suppress errors
CONFIG=$1
shift
set +e # restore erros

echo "Config file: $1"
echo "Game executable: $@"

igniter-shell launch --config-file $CONFIG -- $@