#!/bin/bash
find ~/dotfiles -maxdepth 1 -name '.*' ! -iname ".*.sw*" ! -path ~/dotfiles/ ! -path ~/dotfiles/.git ! -path ~/dotfiles/install.sh -exec ln -svf {} $HOME \;

mkdir -p $HOME/.config/nvim
ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

