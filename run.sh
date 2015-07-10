#!/bin/bash

apt-get update
apt-get -y install vim ctags git
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
cp conf/.vimrc ~/

echo "Setup Finished"
echo "Please open Vim and execute command PluginInstall"

