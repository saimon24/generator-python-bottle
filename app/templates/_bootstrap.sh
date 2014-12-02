#!/bin/bash

venv/bin/python --version >/dev/null 2>&1 || virtualenv venv
./in-venv.sh pip install -r requirements.txt
