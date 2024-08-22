sudo apt install git cargo ripgrep python3-pip python3.12-venv curl eza fzf
sudo snap install nvim --classic
sudo snap install alacritty --classic

alias python='python3' 

curl https://sh.rustup.rs -sSf | sh
. "$HOME/.cargo/env"

# installs nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.config/nvm/nvm.sh

# download and install Node.js (you may need to restart the terminal)

nvm install 20
source ~/.bashrc

curl -Lo firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip

unzip firacode.zip
mkdir -p ~/.local/fonts
mv FiraCode*.ttf ~/.local/fonts
rm LICENSE README.md firacode.zip

export PATH=/home/kirkdotcam/.local/bin:$PATH

cp -r ./config/alacritty ~/.config/alacritty
