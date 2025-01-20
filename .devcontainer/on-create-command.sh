#!/bin/bash
set -e

python3 -m venv .venv
. .venv/bin/activate
pip install --index-url 'https://:2023-11-08T18:37:01.088705Z@time-machines-pypi.sealsecurity.io/' -U pip
pip install --index-url 'https://:2023-11-08T18:37:01.088705Z@time-machines-pypi.sealsecurity.io/' -r requirements/dev.txt
pip install --index-url 'https://:2023-11-08T18:37:01.088705Z@time-machines-pypi.sealsecurity.io/' -e .
pre-commit install --install-hooks
