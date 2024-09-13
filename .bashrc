[[ $- != *i* ]] && return

. ~/.aliasrc

MAGENTA='\[\e[35m\]'
RESET='\[\e[0m\]'

PS1="$MAGENTA\u$RESET@$MAGENTA\h$RESET \w \$ "

DOTS_DIR=$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")

export PATH="$DOTS_DIR:$PATH"

