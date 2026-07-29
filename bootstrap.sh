#!/usr/bin/env bash
# This file is here to support curl dotfiles.kirk.cam
set -euo pipefail

REPO_URL="https://github.com/kirkdotcam/dotfiles.git"
DOTFILES_TARGET_LOCATION="${HOME}/.config/dotfiles"

if command -v git >/dev/null 2>&1; then
  :
else
  echo "Error: git is not installed"
  exit 1
fi

git clone "${REPO_URL}" "${DOTFILES_TARGET_LOCATION}"

echo "starting dotfiles install"
exec bash "${DOTFILES_TARGET_LOCATION}/install.sh" </dev/tty
