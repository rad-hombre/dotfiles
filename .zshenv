# Set env variables for zsh in this file. 
# .zshrc is only read by interactive shells. 

source $HOME/.aliases

# Color prompt 
autoload -U colors && colors

# Set prompt 
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}% %"

# Display git branch on right-hand side of prompt  
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240} (%b) %r%f'
zstyle ':vcs_info:*' enable git

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
