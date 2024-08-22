
if grep -q "#kirkdotcam config#" ~/.bashrc; then

  echo "kirkdotcam config found in .bashrc file. Exiting"
  exit 0
fi

cat ~/.bashrc > ~/.bashrc_old

cat << EOF >> ~/.bashrc

#kirkdotcam config#
. ~/.config/dotfiles/alias.sh
EOF

. ~/.bashrc
