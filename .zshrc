source $HOME/.aliases
setopt histignorealldups sharehistory

# Use Vi-mode editing 
bindkey -v

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

# Load pure prompt 
# https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# Load autojump script
# https://github.com/wting/autojump
[[ -s /Users/dev/.autojump/etc/profile.d/autojump.sh ]] && source /Users/dev/.autojump/etc/profile.d/autojump.sh

# Exprimenting with autosuggestions 
# https://github.com/zsh-users/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^e' autosuggest-accept

export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"
