DOTFILES_DIR="${DOTFILES_DIR:-$HOME/.config/dotfiles}"

# Tools
sudo apt install git ripgrep curl eza fzf btm
sudo apt install alacritty
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/mkasberg/ghostty-ubuntu/HEAD/install.sh)"
sudo apt install xclip pandoc
cargo install --locked zellij

sudo apt install nmap whois sherlock


# install for NVIM

NVIM_VERSION="$(
  curl -fsSL 'https://api.github.com/repos/neovim/neovim/releases?per_page=100' |
  jq -r '.[].tag_name | select(test("^v0\\.11\\.[0-9]+$"))' |
  sort -V |
  tail -n 1
)"

curl -fL \
  "https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.tar.gz" \
  -o /tmp/nvim.tar.gz

sudo rm -rf /opt/nvim
sudo mkdir -p /opt/nvim
sudo tar -xzf /tmp/nvim.tar.gz --strip-components=1 -C /opt/nvim
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim
rm -f /tmp/nvim.tar.gz

export PATH=/home/$(echo $USER)/.local/bin:$PATH

# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p "$DOTFILES_DIR/alacritty/themes"
git clone https://github.com/alacritty/alacritty-theme "$DOTFILES_DIR/alacritty/themes"

# cp -r "$DOTFILES_DIR/config/alacritty" "$HOME/.config/"
cp -r "$DOTFILES_DIR/config/ghostty" "$HOME/.config"
sudo update-alternatives --set x-terminal-emulator /usr/bin/ghostty
gsettings set org.gnome.desktop.default-applications.terminal exec 'ghostty'


cp -r "$DOTFILES_DIR/config/nvim" "$HOME/.config/"

