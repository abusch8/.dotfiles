[[ $- != *i* ]] && return

. ~/.aliasrc
. /usr/share/nvm/init-nvm.sh

MAGENTA='\[\e[35m\]'
RESET='\[\e[0m\]'
BOLD='\[\e[1m\]'

PS1="[$MAGENTA\u$RESET@$MAGENTA\h$RESET \W]\$ $RESET"

export PATH="$HOME/.cargo/bin:$PATH"

