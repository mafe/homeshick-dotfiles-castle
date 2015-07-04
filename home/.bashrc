#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i*  ]] && return

PS1='[\u@\h \W]\$ '
alias tmesg='dmesg|perl -ne "BEGIN{\$a= time()- qx!cat /proc/uptime!};s/\[\s*(\d+)\.\d+\]/localtime(\$1 + \$a)/e; print \$_;"'
alias tmux='tmux -2'
alias ls='ls -lisah --color=auto'
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

