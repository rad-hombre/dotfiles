# Run fish shell as default. 
# Doing this instead of chsh -s `which fish` because 
# this way it doesn't break everything. 
fish

# Reset bash on fish exit or text goes invisible
reset

source ~/.aliases

set -o vi

export EDITOR='vim'
export PAGER='less'

force_color_prompt='yes'

# Auto-completion, ignore caps, belongs in /etc/inputrc
set completion-ignore-case on 

# Prompt 
PS1='\[\e[1m\]┌─[\u@\h][\w]\n\[\e[1m\]└─[\$]\[\e[0m\] '

# Colors for grep#
export GREP_COLOR="1;33"

HISTFILESIZE=50000


PATH=./node_modules/.bin/:$PATH:~/bin

