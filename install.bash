# vi:ft=bash:
if [ ! -e "$HOME/Developer" ]; then
  mkdir -p $HOME/Developer
  touch $HOME/Developer/.localized
fi

SCRIPT_ROOT="$HOME/Developer/github.com/kokopis/dotfiles"
mkdir -p $SCRIPT_ROOT
git clone https://github.com/kokopis/dotfiles.git $SCRIPT_ROOT

if test `uname` = "Darwin"; then
  ln -sf $SCRIPT_ROOT/osx/zshenv $HOME/.zshenv
  ln -sf $SCRIPT_ROOT/osx/zshrc $HOME/.zshrc

  ln -sf $SCRIPT_ROOT/osx/Brewfile $HOME/.Brewfile
  if where brew &>/dev/null; then
    brew bundle --global -f -v
  else
    mkdir -p $HOME/.local/homebrew
    git clone https://github.com/Homebrew/brew $HOME/.local/homebrew
    eval `$HOME/.local/homebrew/bin/brew shellenv`
    brew update --force --quiet
    chmod -R go-w "$(brew --prefix)/share/zsh"
    brew bundle --global -f -v
  fi
fi

if test `uname` = "Linux"; then
  ln -sf $SCRIPT_ROOT/linux/zshenv $HOME/.zshenv
  ln -sf $SCRIPT_ROOT/linux/zshrc $HOME/.zshrc

  if [ ! -e "$HOME/.config/fontconfig" ]; then
    mkdir -p $HOME/.config/fontconfig
  fi
  ln -sf $SCRIPT_ROOT/linux/000-fontstweak-ezfc.conf $HOME/.config/fontconfig/
fi

mkdir -p $HOME/.config/git
ln -sf $SCRIPT_ROOT/share/gitignore_global $HOME/.config/git/ignore
ln -sf $SCRIPT_ROOT/share/gitconfig $HOME/.gitconfig

ln -sf $SCRIPT_ROOT/share/nvim $HOME/.config/nvim
ln -sf $SCRIPT_ROOT/share/antigen.conf.zsh $HOME/.antigen.conf.zsh

if where mise &>/dev/null; then
  ln -sf $SCRIPT_ROOT/share/mise.config.toml $HOME/.config/mise.toml
  mise up
else
  curl https://mise.run | sh
  ln -sf $SCRIPT_ROOT/share/mise.config.toml $HOME/.config/mise.toml
  echo 'TODO: finish installing mise and run `mise run` after the process'
fi

if [ ! -e "$HOME/.config/zed" ]; then
  mkdir -p $HOME/.config/zed
fi
ln -sf $SCRIPT_ROOT/shared/zed-settings.json $HOME/.config/zed/config.json

ln -sf $SCRIPT_ROOT/shared/tmux.conf $HOME/.tmux.conf

if [ ! -e "$HOME/.config/macchina" ]; then
  mkdir -p $HOME/.config/macchina
fi
ln -sf $SCRIPT_ROOT/shared/macchina.toml $HOME/.config/macchina.toml
exit
