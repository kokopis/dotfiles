#! vi:ft=zsh
if `where brew &>/dev/null`; then
  if [ ! -e `brew --prefix antigen` ]; then
    brew install antigen
  fi
  BREWED_ANTIGEN=1
  source $(brew --prefix)/share/antigen/antigen.zsh
fi

if [[ -z "${BREWED_ANTIGEN}" ]]; then
  if [ ! -e "$HOME/.local/opt/antigen/antigen.zsh" ]; then
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
