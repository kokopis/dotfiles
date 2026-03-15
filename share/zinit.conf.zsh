#! vi:ft=zsh
# zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# auto-install zinit if missing
if [[ ! -f "$ZINIT_HOME/zinit.zsh" ]]; then
  print -P "%F{33}Installing zinit...%f"
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME" && \
    print -P "%F{34}Done.%f" || \
    print -P "%F{160}Failed.%f"
fi
source "$ZINIT_HOME/zinit.zsh"

# OMZ pip plugin (turbo: deferred load)
zinit ice wait lucid
zinit snippet OMZP::pip

# syntax highlighting (turbo: deferred load)
zinit ice wait lucid atinit"zicompinit; zicdreplay"
zinit light zsh-users/zsh-syntax-highlighting
