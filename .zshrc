#! vi:ft=zsh
# load plugins
source $HOME/.antigen.conf.zsh

# completion for brew packages
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  brew completions link &>/dev/null
fi

# completion
autoload -Uz compinit
compinit -i

# Prompt
autoload -Uz promptinit
promptinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

prompt walters

# Key binds
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# install brew packages
if type brew &>/dev/null; then
  brew bundle --file $HOME/.Brewfile
fi

# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init - zsh)"
export PATH="$(brew --prefix)/bin:$PATH"

# Initialize pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"

# Load goenv automatically by appending
# the following to ~/.zshrc:

eval "$(goenv init -)"
export PATH=$GOROOT/bin:$PATH
export PATH=$PATH:$GOPATH/bin

# Load direnv
eval "$(direnv hook zsh)"

# Greetings!
neofetch
