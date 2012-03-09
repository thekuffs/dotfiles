#!/bin/bash

DIR=$( cd $( dirname "$0" ) && pwd )

for file in aliases zshrc vimrc vim ; do
  if [[ ( -e ~/.$file ) || ( -h ~/.$file ) ]]; then
    mv ~/.$file ~/.$file.backup
  fi
  ln -s $DIR/$file ~/.$file
done

# init and update vim plugin submodules
git submodule update --init

echo "$DIR" > ~/.dotfiles

cd $DIR
