# vi:ft=zsh:

# PATHs
# Homebrew
export PATH=$HOME/.local/homebrew/bin:$PATH
export PATH=$(brew --prefix)/sbin:$PATH

# Go
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH

# other garbages
export PATH=$HOME/.local/bin:$PATH

# Preferences
# use nvim
export EDITOR=$(which nvim)
alias vim=$(which nvim)

# English please.
export LANG=en_US.UTF-8
export LC_CTYPE=UTF-8
export LC_ALL=en_US.UTF-8

