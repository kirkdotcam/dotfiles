#!/usr/bin/env bash
set -euo pipefail

APPS_DIR="${1:?}"

bash "$APPS_DIR/lazygit.sh"
bash "$APPS_DIR/fonts.sh"
bash "$APPS_DIR/ai.sh"
bash "$APPS_DIR/obsidian.sh"
bash "$APPS_DIR/mermaid.sh"
