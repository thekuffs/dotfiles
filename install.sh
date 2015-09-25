#!/bin/bash

DIR=$( cd $( dirname "$0" ) && pwd )

for file in aliases gitignore vimrc vim zshrc functions tmux.conf; do
  if [[ ( -e ~/.$file ) || ( -h ~/.$file ) ]]; then
    mv ~/.$file ~/.$file.backup
  fi
  ln -s $DIR/$file ~/.$file
done

# init and update vim plugin submodules
git submodule update --init

ln -s $DIR ~/.dotfiles

# backup existing git config, and inject the repo's
if [[ ( -e ~/.gitconfig ) ]]; then
  mv ~/.gitconfig ~/.gitconfig.backup
fi
echo -e "[include]\n    path = $DIR/gitconfig.public" > ~/.gitconfig

# make some folders I like on every box
mkdir ~/.envs   # virtualenvs

# install global python packages
echo "Installing global python packages, provide sudo password.\n"
sudo easy_install pip readline
sudo pip install -r ~/.dotfiles/etc/pyrequire.txt

cd $DIR
