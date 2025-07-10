#
# ~/.bashrc
#
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

PS1='\w\n\[\e[1;5m\] \[\e[0m\] '
