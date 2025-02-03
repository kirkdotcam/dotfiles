. ./tools.sh
cd apps
. ./apps/installer.sh
cd ../languages
. ./languages/installer.sh
cd ..

. ./alias.sh

# Don't run if bashrc is already configured
if grep -q "#kirkdotcam config#" ~/.bashrc; then

  echo "kirkdotcam config found in .bashrc file. Will not modify bashrc"

else
  # Modify bashrc
  cat ~/.bashrc > ~/.bashrc_old

  cat << EOF >> ~/.bashrc

  #kirkdotcam config#

  . ~/.config/dotfiles/alias.sh;

  export EDITOR="nvim";


  #kirkdotcam endconfig#
EOF
fi

. ~/.bashrc

echo "email to use for ssh keys and git config (use obfuscatead github email!)"
read USER_EMAIL
ssh-keygen -T ed25519 -C $USER_EMAIL

echo "username to use for git config"
read GIT_USERNAME

git config --global user.email $USER_EMAIL
git config --global user.name $GIT_USERNAME


unset USER_EMAIL
unset GIT_USERNAME

