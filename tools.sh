DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.config/dotfiles}"

sudo apt install git ripgrep curl eza fzf btm
sudo snap install nvim --classic
sudo apt install alacritty
sudo snap install zellij --classic 
sudo apt install xclip


export PATH=/home/$(echo $USER)/.local/bin:$PATH

# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p "$DOTFILES_DIR/alacritty/themes"
git clone https://github.com/alacritty/alacritty-theme "$DOTFILES_DIR/alacritty/themes"

cp -r "$DOTFILES_DIR/config/alacritty" "$HOME/.config/"
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/alacritty 50;

cp -r "$DOTFILES_DIR/config/nvim" "$HOME/.config/"
