alias ls='eza --group-directories-first --icons'
alias lsa='ls -a'
alias tree='eza --tree --level=2 --icons -I node_modules'

alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias n='nvim'

alias vact=". ./venv/bin/activate"
alias za="zellij a default"

alias ...="cd ../.."
alias ....="cd ../../.."

alias sshpub='xclip -selection clipboard < ~/.ssh/id_ed25519.pub && echo "SSH key copied to clipboard."'

function msh(){
  if [[ ! -f .env ]]; then
    echo ".env file not found. Exiting."
    return 1  # Exit with a non-zero status
  fi

  mongosh $(grep '^MONGODB_URL=' .env | cut -d '=' -f2- | tr -d "'\"")
}

function z() {
  local session="${1:-default}"

  if ! zellij ls | grep -q "$session"; then
    zellij -s "$session"
  else
    zellij attach --create "$session"
  fi
}

function gi() { 
  curl -sL https://www.toptal.com/developers/gitignore/api/$@ ;
}
