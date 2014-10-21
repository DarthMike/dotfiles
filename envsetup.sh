#!/bin/sh

echo '...Installing RVM...'
curl -sSL https://get.rvm.io | bash -s stable

echo '...Installing homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '...Setting up ruby 2.1.1...'
rvm install ruby 2.1.1
rvm use ruby-2.1.1

echo '...Installing ruby essentials...'
gem install bundle
bundle install

echo '...Installing homebrew essentials...'
brew bundle Brewfile

echo '...Symlinking env .zhshrc to ~/.zshrc ...'
rm $HOME/.zshrc
ln .zshrc $HOME/.zshrc

echo '...Symlinking env .gitconfig to ~/.gitconfig'
rm $HOME/.gitconfig
ln .gitconfig $HOME/.gitconfig

echo '...Symlinking .gitignore_global to ~/.gitignore_global'
rm $HOME/.gitignore_global
ln .gitignore_global $HOME/.gitignore_global

source .bash_profile
