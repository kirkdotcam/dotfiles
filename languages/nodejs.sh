curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.config/nvm/nvm.sh

# download and install Node.js (you may need to restart the terminal)

nvm install --lts
source ~/.bashrc

#neovim provider
npm i -g neovim

curl -fsSL https://deno.land/install.sh | sh
mkdir -p ~/.local/share/bash-completion/completions
deno completions bash > ~/.local/share/bash-completion/completions/deno
