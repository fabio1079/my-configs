#!/bin/bash

cp .gitconfig ~
cp .vimrc ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall"

mkdir ~/.vim/colors
cp ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim

