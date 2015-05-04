
source ~/.aliases
set -o vi

export EDITOR='vim'
export PAGER='less'
export HISTFILESIZE=50000
force_color_prompt='yes'

# Auto-completion, ignore caps, belongs in /etc/inputrc
set completion-ignore-case on 

# Set custom prompt 
PS1='\[\e[32m\][\u@\h][\w]\[\e[32m\][\$]\[\e[0m\] '

# Colors for grep#
export GREP_OPTIONS='--color=auto'
export GREP_COLOR="1;33"

PATH=./node_modules/.bin/:$PATH:~/bin
CDPATH=.:/$HOME/School

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


