#!/usr/bin/env bash

set -ef -o pipefail

if [ -z "$1" ]; then
  >&2 echo "The starting directory needs to be given as the first and only argument"
  exit 1
fi

set -u

tree -n $1 | enscript --no-header --output=- | ps2pdf -
