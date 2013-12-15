[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


#export DISPLAY=":0.0"
export CLICOLOR=1
#export MANPATH="/usr/local/man:$MANPATH"
#export COPYFILE_DISABLE=true
export ARCHFLAGS='-arch x86_64'
export EDITOR='vim -f'

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

#export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(parse_git_branch)\$ "
#export PS1="\[\033[38;5;64m\]\u@\h\[\033[00m\]:\[\033[38;5;37m\]\w\[\033[38;5;136m\]\$(parse_git_branch)\[\033[38;5;160m\]\$\[\033[00m\] "
export PS1="\[\033[38;5;33m\]\u@\h\[\033[38;5;64m\]:\[\033[38;5;37m\]\w\[\033[38;5;136m\]\$(parse_git_branch)\[\033[38;5;160m\]\$\[\033[00m\] "

# Source rbenv to manage Ruby versions
export PATH=".bundle/binstubs:$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Source NVM to manage Node versions
[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Override default bash settings based on the OS.
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  . ~/.bash_linux
elif [[ "$unamestr" == 'Darwin' ]]; then
  . ~/.bash_osx
fi
