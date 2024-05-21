#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls --color=auto"
alias ll="ls -la"
alias vim="nvim"
alias open="dolphin"
PS1="[\[\e[1;35m\]\u\[\e[00m\]@\[\e[1;35m\]\h\[\e[00m\] \W]\$ "
source /usr/share/nvm/init-nvm.sh

# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(thefuck --alias)"

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"
