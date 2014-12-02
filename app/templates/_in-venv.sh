#!/bin/bash

cmd="$1"
shift
. venv/bin/activate
export PYTHONPATH=$PWD/lib:$PYTHONPATH
exec "$cmd" "$@"
