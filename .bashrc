source $HOME/.aliases
export EDITOR='vim'
export PAGER='less'
export HISTFILESIZE=50000
force_color_prompt='yes'

PS1='\[\e[32m\]\u\e[33m\]@\e[32m\]\h \e[33m\]\w\[\e[35m\] \$\[\e[0m\] '

# Colors for grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="1;33"

PATH=./node_modules/.bin/:$PATH:~/bin
CDPATH=.:/$HOME/School:/$HOME/WebstormProjects

# Load NVM 
export NVM_DIR="/Users/dev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  

# Run fish as default shell if exists. This instead of $chsh -s `which fish` 
# because some tools break in fish's non-POSIX environment; 
# good to have option of dropping back down into bash 
if type "fish" &> /dev/null ; then
  fish
  # Reset bash on fish exit or text goes invisible
  reset
fi
