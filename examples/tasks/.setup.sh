#!/bin/bash

set -e
set -u
set -o pipefail

# check for dependencies
EXIT_ON_ERROR=0
command -v docker >/dev/null 2>&1 || { echo >&2 "Error: docker needs to be installed."; EXIT_ON_ERROR=1; }
command -v docker-compose >/dev/null 2>&1 || { echo >&2 "Error: docker-compose needs to be installed."; EXIT_ON_ERROR=1; }
docker version >/dev/null 2>&1 || { echo >&2 "Error: docker needs to be configured."; EXIT_ON_ERROR=1; }
if [[ $EXIT_ON_ERROR > 0 ]]; then
    exit 1
fi