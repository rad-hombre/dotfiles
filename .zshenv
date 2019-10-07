# Start-up file for zsh shell 
# Place all environment variables in here not in .zshrc
# .zshrc is only read by interactive shells 


source $HOME/.aliases

# Color prompt 
autoload -U colors && colors


# Git branch in prompt.
parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set propmt 
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

