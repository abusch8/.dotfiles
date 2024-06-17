[[ $- != *i* ]] && return

. ~/.aliasrc
. /usr/share/nvm/init-nvm.sh

MAGENTA='\[\e[35m\]'
RESET='\[\e[0m\]'
BOLD='\[\e[1m\]'

PS1="[$MAGENTA\u$RESET@$MAGENTA\h$RESET \W]\$ $RESET"

DOTS_DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")

export PATH="$DOTS_DIR:$PATH"

