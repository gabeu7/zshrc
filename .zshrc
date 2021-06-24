# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gabe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Fashion babey
#Import colors from wal asynchronously
(cat ~/.cache/wal/sequences &)

#Import colors
. "${HOME}/.cache/wal/colors.sh"

#Edit name that shows up on every prompt line
alias ls='ls --color=auto'
PS1='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '

alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

TERM="st-256color"
SHELL=/bin/zsh
