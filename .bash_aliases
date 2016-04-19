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
alias be='bundle exec'
alias lenv='source .env'
alias nr='repl.history'
alias ss='export $(cat .env) && script/server'
alias mailcatcher='mailcatcher --http-ip 0.0.0.0 -f'
alias server='python -m SimpleHTTPServer'
alias nx='~/openresty/nginx/sbin/nginx'

alias gp='git pull'
alias gc='git commit'
alias gs='git status'
alias gsp='git stage -p'
alias gch='git checkout'

alias ge='goop exec'


alias bashrc="vim ~/.bash_profile; source ~/.bash_profile"

# Show Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


alias .1='cd ../'
alias ..='cd ../'
alias cd..='cd ../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias tmp='cd /tmp'
alias mkcd='_(){ mkdir $1; cd $1; }; _'

alias webshare='python -m SimpleHTTPServer'

# Typo check
alias sl=ls

alias ll='ls -al'

alias histgrep='history | grep'
alias psgrep='ps -ef | grep'

# Use multiple versions of java #
use-java () {
    export JAVA_HOME=`/usr/libexec/java_home -v 1.$1`
}
