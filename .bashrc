source $HOME/.aliases
export EDITOR='vim'
export PAGER='less'
export HISTFILESIZE=50000
force_color_prompt='yes'

PS1='\[\e[32m\][\u@\h][\w]\[\e[32m\][\$]\[\e[0m\] '

# Colors for grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="1;33"

PATH=./node_modules/.bin/:$PATH:~/bin
CDPATH=.:/$HOME/School:/$HOME/WebstormProjects

# Moved this from bottom. 
export NVM_DIR="/Users/dev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Run fish as default shell
# Doing this instead of chsh -s `which fish` because 
# this way seems to break less things

# Placed down here so fish can use bash's defined env variables
fish

# NOTE: If you ever move to using fish shell without starting 
# Bash first, you'll have to move over all env variables
# defined here into fish.config


# Reset bash on fish exit or text goes invisible
reset



