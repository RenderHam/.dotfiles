# Cool Symlink

[[ $- != *i* ]] && return

alias ls='exa --color=always --icons=always'
alias grep='grep --color=auto'
alias s='sudo'
alias v='nvim'
alias sv='sudo nvim'
alias sp='sudo pacman'
alias phone='. ~/scripts/phone_mount'
alias hell='. ~/scripts/hell'
alias ytx='yt-x'
alias y='yazi'

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'
PS1='\[\e[2m\]\w\[\e[0;1m\]   \[\e[3;5m\]${PS1_CMD1}\n\[\e[0;5m\] \[\e[0m\] '
