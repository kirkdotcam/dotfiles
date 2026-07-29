#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="$HOME/.config/dotfiles"
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ "$CURRENT_DIR" != "$TARGET_DIR" ]; then
  echo "Installing dotfiles to $TARGET_DIR"

  mkdir -p "$HOME/.config"

  mv "$CURRENT_DIR" "$TARGET_DIR"

  echo "Re-running installer from new location..."
  exec "$TARGET_DIR/install.sh"
fi

# export so other .sh files in dotfiles can use this.
DOTFILES_DIR="$TARGET_DIR"
export DOTFILES_DIR


echo $CURRENT_DIR

echo "running languages/installer.sh"
bash "$CURRENT_DIR/languages/installer.sh" "${CURRENT_DIR}/languages"

echo "running tools.sh"
bash "$CURRENT_DIR/tools.sh"

echo "running apps/installer.sh"
bash "$CURRENT_DIR/apps/installer.sh" "${CURRENT_DIR}/apps"

echo "running alias.sh"
bash "$CURRENT_DIR/alias.sh"


# Don't run if bashrc is already configured
if grep -q "#kirkdotcam config#" ~/.bashrc; then

  echo "kirkdotcam config found in .bashrc file. Will not modify bashrc"

else
  # Modify bashrc
  cp ~/.bashrc > ~/.bashrc.bak.$(date +%s)

  cat << EOF >> ~/.bashrc

  #kirkdotcam config#

  . ~/.config/dotfiles/alias.sh;

  export EDITOR="nvim";


  #kirkdotcam endconfig#
EOF
fi

# source ~/.bashrc

echo "email to use for ssh keys and git config (use obfuscatead github email!)"
read USER_EMAIL
echo "username to use for git config"
read GIT_USERNAME

echo $USER_EMAIL
echo $GIT_USERNAME

if [ ! -f "$HOME/.ssh/id_ed25519" ]; then
  ssh-keygen -t ed25519 -C "$USER_EMAIL"
else
  echo "SSH Key already exists. Skipping generation of new keys."
fi

git config --global user.email "$USER_EMAIL"
git config --global user.name "$GIT_USERNAME"
git config --global init.defaultBranch main

unset USER_EMAIL
unset GIT_USERNAME

mv dotfiles ~/.config/dotfiles

[ -f ~/.config/dotfiles/alias.sh ] && source ~/.config/dotfiles/alias.sh
