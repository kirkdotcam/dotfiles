#!/usr/bin/env bash
set -euo pipefail

LANGUAGES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$LANGUAGES_DIR/rust.sh"
bash "$LANGUAGES_DIR/nodejs.sh"
bash "$LANGUAGES_DIR/python.sh"
