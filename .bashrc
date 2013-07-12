# customize bash prompt

#problem with colors and overlapping input

#PS1='\e[1;203m\u@\h:\w$ \e[m '

PS1='\u@\h:\w$ '
#PS1=`\[e[1;203m\]u@\h:\w$ \[e[m] `

# define directory color
#LS_COLORS='di=1;36';
#export LS_COLORS

export TERM='xterm-256color'

export EDITOR='vim'
export PAGER='less'

force_color_prompt='yes'
alias ch='chromium-browser'
alias ff='firefox'

#install alsa-oss, create/set .config/pianobar/config, set default_driver=oss
#run aoss pianobar
alias pianobar='aoss pianobar'

#aliases for changing directories
alias ..='cd ..'
alias ...='cd ../..'

#i feel I could do more here, 
alias l='clear && pwd && ls -FGl'
alias u='cd .. && l'
set completion-ignore-case on #auto-completion, ignore caps, belongs in /etc/inputrc

# copy input/output to/from clipboard, mimicks program on macosx
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
