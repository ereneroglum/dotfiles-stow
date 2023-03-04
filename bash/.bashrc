#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Set prompt
PS1="\e[0;32m[\u@\h:\w]\$ \e[0m"

# Set default programs
export EDITOR=nvim
export VISUAL=nvim
export MANPAGER='nvim +Man!'
