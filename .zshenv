# Set env variables for zsh in this file. 
# .zshrc is only read by interactive shells. 

source $HOME/.aliases

# Color prompt 
autoload -U colors && colors

# Set PATH
PATH=./node_modules/.bin/:/usr/local/mysql/bin:$PATH:~/bin

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
