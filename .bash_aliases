alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Need to set this to get solarized color-scheme
# to work in tmux.
alias tmux='TERM=screen-256color-bce tmux'

# some more ls aliases
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias bi='bundle install'
alias lenv='export $(cat .env)'
alias hk='heroku'
alias nr='repl.history'
alias ss='export $(cat .env) && script/server'
alias mailcatcher='mailcatcher --http-ip 0.0.0.0 -f'

alias gp='git pull'
alias gc='git commit'
alias gs='git status'
alias gsp='git stage -p'
