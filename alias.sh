alias ls='eza --group-directories-first --icons'
alias lsa='ls -a'
alias tree='eza --tree --level=2 --icons -I node_modules'

alias ff="fzf --preview 'batcat --style=numbers --color=always {}'"
alias n='nvim'

alias vact=". ./venv/bin/activate"
alias msh="mongosh $(grep '^MONGODB_URL=' .env | cut -d '=' -f2-)"
