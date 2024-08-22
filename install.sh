. ./tools.sh
. ./languages/rust.sh
. ./languages/nodejs.sh
. ./languages/python.sh

. ./alias.sh

# Don't run if bashrc is already configured
if grep -q "#kirkdotcam config#" ~/.bashrc; then

  echo "kirkdotcam config found in .bashrc file. Exiting"
  exit 0
fi



# Modify bashrc
cat ~/.bashrc > ~/.bashrc_old

cat << EOF >> ~/.bashrc

#kirkdotcam config#

. ~/.config/dotfiles/alias.sh;

export EDITOR="nvim";


#kirkdotcam endconfig#
EOF

. ~/.bashrc
