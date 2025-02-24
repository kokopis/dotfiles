#! vi:ft=zsh
if where brew &>/dev/null && [ -e $HOMEBREW_PREFIX/share/antigen/antigen.zsh ]; then
  source $HOMEBREW_PREFIX/share/antigen/antigen.zsh
elif where brew &>/dev/null; then
  brew install antigen
  source $HOMEBREW_PREFIX/share/antigen/antigen.zsh
else
  if [ -e $HOME/.local/opt/antigen/antigen.zsh ]; then
    curl -L git.io/antigen > "$HOME/.local/opt/antigen/antigen.zsh"
  fi
  source $HOME/.local/opt/antigen/antigen.zsh
fi

antigen use oh-my-zsh

antigen bundle pip
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle arialdomartini/oh-my-git
#antigen theme arialdomartini/oh-my-git-themes oppa-lana-style

antigen apply
