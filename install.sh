#!/bin/bash

DIR=$( cd $( dirname "$0" ) && pwd )

for file in aliases gitconfig gitignore vimrc vim zshrc; do
  if [[ ( -e ~/.$file ) || ( -h ~/.$file ) ]]; then
    mv ~/.$file ~/.$file.backup
  fi
  ln -s $DIR/$file ~/.$file
done

# init and update vim plugin submodules
git submodule update --init

ln -s $DIR ~/.dotfiles

cd $DIR
