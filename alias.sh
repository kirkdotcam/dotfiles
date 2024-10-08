alias ls='eza --group-directories-first --icons'
alias lsa='ls -a'
alias tree='eza --tree --level=2 --icons -I node_modules'

alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias n='nvim'

alias vact=". ./venv/bin/activate"
alias za="zellij a default"

function msh(){
  if [[ ! -f .env ]]; then
    echo ".env file not found. Exiting."
    return 1  # Exit with a non-zero status
  fi

  mongosh $(grep '^MONGODB_URL=' .env | cut -d '=' -f2- | tr -d "'\"")
}
