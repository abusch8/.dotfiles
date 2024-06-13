PS1='%B%F{magenta}%n%f@%F{magenta}%m%f %1~ %# %b'

alias ls='ls --color=auto'
alias ll='ls --color=auto -l'

eval "$(fzf --zsh)"
eval "$(thefuck --alias)"

export TERM=xterm-256color

bindkey '\e[3;3~' kill-word

