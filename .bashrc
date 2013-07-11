# customize bash prompt
PS1='\e[1;203m\u@\h:\w$ \e[m '

# define directory color
#LS_COLORS='di=1;36';
#export LS_COLORS

#export TERM='screen-256color'
#turn on below, and freaks out 
export TERM='xterm-256color'

# define preferred programs
export EDITOR='vim'
export PAGER='less'

force_color_prompt='yes'
alias ch='chromium-browser'

alias ff='firefox'


#aliases for changing directories
alias ..='cd ..'
alias ...='cd ../..'
#i feel I could do more here, 
alias l='clear && pwd && ls -FGl'
alias u='cd .. && l'
#for auto-completion with disregard for caps, belongs in /etc/inputrc
set completion-ignore-case on

# copy input/output to/from clipboard, mimicks program on macosx
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
