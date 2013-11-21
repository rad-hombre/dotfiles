# customize bash prompt

# temp aliases for some testing
alias rr='xrdb ~/.Xresources'
#alias v='vim'

export TERM='xterm-256color'

export EDITOR='vim'
export PAGER='less'

force_color_prompt='yes'
alias ch='chromium'
alias ff='firefox'
alias weechat='weechat-curses'

#install alsa-oss, create/set .config/pianobar/config, set default_driver=oss
#run aoss pianobar
alias pianobar='aoss pianobar'

#aliases for changing directories
alias ..="cd .."
alias ...='cd ../..'

#i feel I could do more here, 
alias l='clear && pwd && ls -FGl'
alias u='cd .. && l'
set completion-ignore-case on #auto-completion, ignore caps, belongs in /etc/inputrc

# copy input/output to/from clipboard, mimicks program on macosx
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'



# ideas from rentOn
PS1='\[\e[1m\]┌─[\u@\h][\W]\n\[\e[1m\]└─[\$]\[\e[0m\]'


# Colors for ls
alias ls='ls --color=auto'
eval `dircolors -b`

# Colors for grep
export GREP_COLOR="1;33"
alias grep='grep --color=auto'

# Colors for man
#export LESS_TERMCAP_mb=$'\e[1;31m'
#export LESS_TERMCAP_md=$'\e[1;31m'
#export LESS_TERMCAP_me=$'\e[0m'
#export LESS_TERMCAP_se=$'\e[0m'
#export LESS_TERMCAP_so=$'\e[1;44;33m'
#export LESS_TERMCAP_ue=$'\e[0m'
#export LESS_TERMCAP_us=$'\e[1;32m'


