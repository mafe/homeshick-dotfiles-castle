#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i*  ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias tmesg='dmesg|perl -ne "BEGIN{\$a= time()- qx!cat /proc/uptime!};s/\[\s*(\d+)\.\d+\]/localtime(\$1 + \$a)/e; print \$_;"'


