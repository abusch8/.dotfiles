[[ $- != *i* ]] && return

PS1="[\[\e[1;35m\]\u\[\e[00m\]@\[\e[1;35m\]\h\[\e[00m\] \W]\$ "

alias ls='ls --color=auto'
alias ll='ls --color=auto -la'

alias open='dolphin'

eval "$(thefuck --alias)"

source /usr/share/nvm/init-nvm.sh

export PATH="$HOME/.cargo/bin:$PATH"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

