#!/usr/bin/env bash

set -euo pipefail

cd langid

gunicorn -b 0.0.0.0:9008 wsgi:application