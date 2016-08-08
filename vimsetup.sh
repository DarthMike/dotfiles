#!/bin/sh

echo "...Installing vim-plug..."
curl -fLo .vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "...Copying thoughtbot files..."
cp -rf thoughtbot-dotfiles/vim/ftplugin .vim/ftplugin


