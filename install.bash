# vi:ft=bash:
if [ ! -e "$HOME/Developer" ]; then
  mkdir -p $HOME/Developer
  touch $HOME/Developer/.localized
fi

SCRIPT_ROOT="$HOME/Developer/github.com/kokopis/dotfiles"
mkdir -p $SCRIPT_ROOT
cp -Rf * $SCRIPT_ROOT

if test `uname` = "Darwin"; then
  ln -sf $SCRIPT_ROOT/osx/zshenv $HOME/.zshenv
  ln -sf $SCRIPT_ROOT/osx/zshrc $HOME/.zshrc

  ln -sf $SCRIPT_ROOT/osx/Brewfile $HOME/.Brewfile
  if where brew &>/dev/null; then
    brew bundle --global
  else
    mkdir -p $HOME/.local/homebrew
    git clone https://github.com/Homebrew/brew $HOME/.local/homebrew
    eval `$HOME/.local/homebrew/bin/brew shellenv`
    brew update --force --quiet
    chmod -R go-w "$(brew --prefix)/share/zsh"
    brew bundle --global
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

mkdir -p $HOME/.config/nvim
ln -sf $SCRIPT_ROOT/share/init.vim $HOME/.config/nvim/
ln -sf $SCRIPT_ROOT/share/antigen.conf.zsh $HOME/.antigen.conf.zsh

if [ ! -e "$HOME/.config/zed" ]; then
  mkdir -p $HOME/.config/zed
fi
ln -sf $SCRIPT_ROOT/shared/zed-settings.json $HOME/.config/zed/config.json

ln -sf $SCRIPT_ROOT/shared/tmux.conf $HOME/.tmux.conf
exit
