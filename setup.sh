#!/bin/bash

#sudo apt-get update
#sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

cp .gitconfig ~
cp .vimrc ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall"

mkdir ~/.vim/colors
cp ~/.vim/bundle/vim-monokai/colors/monokai.vim ~/.vim/colors/monokai.vim

