[[ $- != *i* ]] && return

MAGENTA='\[\e[0;35m\]'
RESET='\[\e[0m\]'

PS1="$MAGENTA\u$RESET@$MAGENTA\h$RESET \W \$ "

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'

alias open='dolphin'

eval "$(thefuck --alias)"

source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/.cargo/bin:$PATH"

[ "$TERM" = 'xterm-kitty' ] && alias ssh='kitty +kitten ssh'

