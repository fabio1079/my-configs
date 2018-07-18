#!/bin/bash

cp .gitconfig ~

function setup_neovim() {
  mkdir -p ~/.config/nvim
  cp init.vim ~/.config/nvim/

  sudo apt-get install neovim

  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  nvim -c ":PlugInstall"
}

setup_neovim

cp .bash_config ~/.bash_config
echo "source ~/.bash_config" >> ~/.bashrc

