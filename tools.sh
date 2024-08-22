sudo apt install git cargo ripgrep python3-pip python3.12-venv curl 
sudo snap install nvim --classic
sudo snap install alacritty --classic

alias python='python3' 

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
rm LICENSE.md README.md firacode.zip

export PATH=/home/kirkdotcam/.local/bin:$PATH

cp -r ./alacritty ~/.config/alacritty
