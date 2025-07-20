#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -l'
alias l='ls -al'

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
