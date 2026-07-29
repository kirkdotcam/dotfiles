#!/usr/bin/env bash
set -euo pipefail

LANGUAGES_DIR="${1:?}"

bash "$LANGUAGES_DIR/rust.sh"
bash "$LANGUAGES_DIR/nodejs.sh"
bash "$LANGUAGES_DIR/python.sh"
