# vi:ft=bash:
if test `uname` = "Darwin"; then
  ln -s ./osx/zshenv $HOME/.zshenv
  ln -s ./osx/zshrc $HOME/.zshrc

  ln -s ./osx/Brewfile $HOME/.Brewfile
  if where brew &>/dev/null; then
    brew bundle --global
  else
    mkdir -p $HOME/.local/homebrew
    curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOME/.local/homebrew
    eval `$HOME/.local/homebrew shellenv`
    brew bundle --global
  fi
fi

if test `uname` = "Linux"; then
  ln -s ./linux/zshenv $HOME/.zshenv
  ln -s ./linux/zshrc $HOME/.zshrc

  if [ ! -e "$HOME/.config/fontconfig" ]; then
    mkdir -p $HOME/.config/fontconfig
  fi
  ln -s ./linux/000-fontstweak-ezfc.conf $HOME/.config/fontconfig/
fi

ln -s ./share/gitconfig $HOME/.gitconfig
ln -s ./share/init.vim $HOME/.config/nvim/
ln -s ./share/antigen.conf.zsh $HOME/.antigen.conf.zsh

exit
