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
#(cat ~/.cache/wal/sequences &)

#Import colors
#. "${HOME}/.cache/wal/colors.sh"

#Get working branch for github
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'branch %b'

#Prompt settings
alias ls='ls --color=auto'

setopt prompt_subst
PS1='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %F{cyan}${vcs_info_msg_0_}%f %# '
autoload -U promptinit
promptinit

#alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

TERM="st-256color"
SHELL=/bin/zsh
