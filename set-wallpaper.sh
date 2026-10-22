#!/usr/bin/env bash
set -euo pipefail

gsettings set org.gnome.desktop.background picture-uri \
  "file://$HOME/.config/dotfiles/wallpapers/light3.png"

gsettings set org.gnome.desktop.background picture-uri-dark \
  "file://$HOME/.config/dotfiles/wallpapers/dark4.png"

