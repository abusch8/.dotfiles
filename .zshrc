PS1='%B%F{magenta}%n%f@%F{magenta}%m%f %1~ %# %b'

eval "$(fzf --zsh)"

DOTS_DIR=$(dirname "$(readlink -f "${(%):-%x}")")

export PATH="$DOTS_DIR:$PATH"
export TERM=xterm-256color

