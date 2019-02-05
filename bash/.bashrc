#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Import colorscheme from 'wal' asynchronously
(cat ~/.cache/wal/sequences &)

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
