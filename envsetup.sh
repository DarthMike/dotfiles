#!/bin/sh

echo '...Installing ruby essentials...'
gem install bundle
bundle install

# https://github.com/thoughtbot/laptop
number_of_cores=`sysctl -n hw.ncpu`
bundle config --global jobs `expr $number_of_cores - 1`

echo '...Installing homebrew essentials...'
./homebrew.sh

echo '...Setting up POW...'
curl get.pow.cx | sh

echo '...Symlinking env .zhshrc to ~/.zshrc ...'
rm $HOME/.zshrc
ln .zshrc $HOME/.zshrc

echo '...Symlinking env .gitconfig to ~/.gitconfig'
rm $HOME/.gitconfig
ln .gitconfig $HOME/.gitconfig

echo '...Symlinking .gitignore_global to ~/.gitignore_global'
rm $HOME/.gitignore_global
ln .gitignore_global $HOME/.gitignore_global

echo '...Symlinking .gitattributes to ~/.gitattributes'
rm $HOME/.gitattributes
ln .gitattributes $HOME/.gitattributes
