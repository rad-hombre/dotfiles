source $HOME/.aliases

# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export EDITOR='vim'
export PAGER='less'
export HISTFILESIZE=50000
export HISTTIMEFORMAT='%F %T ' # Nicer history format 
force_color_prompt='yes'
export PS1="\[\e[32m\]\u\[\e[33m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[35m\]\$(parse_git_branch)\[\e[0m\] " 
export CLICOLOR=1
export LSCOLORS=GxxfCxDxBxegedabagaced

# Colors for grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="1;33"

PATH=./node_modules/.bin/:/usr/local/mysql/bin:$PATH:~/bin
CDPATH=.:/$HOME/School:/$HOME/Projects
