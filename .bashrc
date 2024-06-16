[[ $- != *i* ]] && return

MAGENTA='\[\e[35m\]'
RESET='\[\e[0m\]'
BOLD='\[\e[1m\]'

PS1="[$MAGENTA\u$RESET@$MAGENTA\h$RESET \W]\$ $RESET"

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'
alias vi='nvim'

source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/.cargo/bin:$PATH"

