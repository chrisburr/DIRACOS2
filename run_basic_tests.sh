#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

IMAGE_NAME=$1
exec docker run --rm --privileged -v $PWD:/diracos-repo $IMAGE_NAME bash -c 'bash /diracos-repo/DIRACOS-2.0a1-Linux-x86_64.sh -b -p diracos && source diracos/diracosrc && pytest -v /diracos-repo/tests/test_import.py && bash /diracos-repo/tests/test_cli.sh'
