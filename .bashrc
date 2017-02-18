source $HOME/.aliases

export EDITOR='vim'
export PAGER='less'
export HISTFILESIZE=50000
force_color_prompt='yes'
export PS1="\[\e[32m\]\u\[\e[33m\]@\[\e[32m\]\h \[\e[33m\]\w\[\e[35m\] \$\[\e[0m\] " 

# Get Git Bash prompt if exists
if [ -f $HOME/bin/git-prompt.sh ]
then
  source $HOME/bin/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  export GIT_PS1_SHOWUPSTREAM="auto"
  export GIT_PS1_SHOWCOLORHINTS="yes"
  export PROMPT_COMMAND='__git_ps1 "\[\e[32m\]\u\[\e[33m\]@\[\e[32m\]\h\[\e[33m\] \w\[\e[0m\]" " \[\e[35m\]\$\[\e[0m\] "'
fi

export CLICOLOR=1
export LSCOLORS=GxxfCxDxBxegedabagaced

# Colors for grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="1;33"

PATH=./node_modules/.bin/:$PATH:~/bin
CDPATH=.:/$HOME/School:/$HOME/WebstormProjects

# Load NVM 
export NVM_DIR="/Users/dev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

