#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i*  ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias tmesg='dmesg|perl -ne "BEGIN{\$a= time()- qx!cat /proc/uptime!};s/\[\s*(\d+)\.\d+\]/localtime(\$1 + \$a)/e; print \$_;"'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"


#
# GnuPG Agent autostart
#
envfile="$HOME/.gnupg/gpg-agent.env"
if [[ -e "$envfile" ]] && kill -0 $(grep GPG_AGENT_INFO "$envfile" | cut -d: -f 2) 2>/dev/null; then
    eval "$(cat "$envfile")"
else
    eval "$(gpg-agent --daemon --enable-ssh-support --write-env-file "$envfile")"
fi
export GPG_AGENT_INFO  # the env file does not contain the export statement
export SSH_AUTH_SOCK   # enable gpg-agent for ssh
#
