# vi:ft=bash:
if test `uname` = "Darwin"; then
  ln -sf osx/zshenv $HOME/.zshenv
  ln -sf osx/zshrc $HOME/.zshrc

  ln -sf osx/Brewfile $HOME/.Brewfile
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
  ln -sf linux/zshenv $HOME/.zshenv
  ln -sf linux/zshrc $HOME/.zshrc

  if [ ! -e "$HOME/.config/fontconfig" ]; then
    mkdir -p $HOME/.config/fontconfig
  fi
  ln -sf linux/000-fontstweak-ezfc.conf $HOME/.config/fontconfig/
fi

ln -sf share/gitconfig $HOME/.gitconfig
ln -sf share/init.vim $HOME/.config/nvim/
ln -sf share/antigen.conf.zsh $HOME/.antigen.conf.zsh

exit
