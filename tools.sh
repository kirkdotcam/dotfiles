sudo apt install git ripgrep curl eza fzf
sudo snap install nvim --classic
sudo snap install alacritty --classic

export PATH=/home/$(echo $USER)/.local/bin:$PATH

# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes

cp -r ./config/alacritty ~/.config/alacritty
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50;
cp -r ./config/nvim ~/.config/
