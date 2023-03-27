#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Set prompt
PS1='\[\e[1;32m\][\u@\h:\w]\$ \[\e[m\]'

# Load custom bash scripts
for i in "$HOME/.config/bash-scripts/"*
do
        . "$i"
done

# Add $HOME/.local/bin to path if it exists
if [ -d "$HOME/.local/bin" ]
then
        export PATH="$HOME/.local/bin:$PATH"
fi
