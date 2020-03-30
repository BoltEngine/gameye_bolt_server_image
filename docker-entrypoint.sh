#!/bin/bash

set -e # suppress errors
CONFIG=$1
shift
set +e # restore erros

echo "Config file: $CONFIG"
echo "Game executable: $@"

exec igniter-shell launch --config-file $CONFIG -- $@