# Prompt
autoload -U colors && colors
PS1="%{$fg[green]%}%n%{$reset_color%}> "

# Activation auto-completion
autoload -U compinit
compinit

# Prompt
autoload -U promptinit
promptinit

# Ambiguous completion (bash like)
setopt no_auto_menu
setopt bash_auto_list
unsetopt ALWAYS_LAST_PROMPT

# Aliases
alias vim="mvim -v"
alias ls="gls --color=auto"
alias ll="ls -l"
alias l="ll"
alias lla="ll -a"
alias kimsufi="ssh dreamstate@ks3306534.kimsufi.com"

# Macport GNU bin
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# MySQL5 bin
export PATH="/opt/local/lib/mysql5/bin:$PATH"

# Editor
export EDITOR="mvim -v"

# PostGreSQL
export PGDATA=/usr/local/var/postgres/data

# Python
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

# History search
bindkey -v
bindkey '^R' history-incremental-search-backward

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
