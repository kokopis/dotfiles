#! vi:ft=zsh:
# install brew and packages when running on mac
if [[ $("uname") == "Darwin" ]]; then
  # we'll pour formulä into ~/.local/homebrew/bin
  BREW_DEST_DIR=$HOME/.local

  cp    -v ./.Brewfile $HOME
  mkdir -p $BREW_DEST_DIR && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $BREW_DEST_DIR
  $BREW_DEST_DIR/homebrew/bin/brew bundle --file $HOME/.Brewfile
fi

# copy other files
cp -v  ./.zshenv
cp -v  ./.antigen.conf.zsh
cp -v  ./.zshrc
cp -Rv ./.config

echo "Done\n"
