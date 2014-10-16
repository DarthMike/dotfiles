#!/bin/sh

echo '...Installing RVM...'
curl -sSL https://get.rvm.io | bash -s stable

echo '...Installing homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '...Setting up ruby 2.1.1...'
rvm install ruby 2.1.1
rvm use ruby-2.1.1

echo '...Installing ruby essentials...'
gem install cocoapods
gem install bundler
gem install sinatra
gem install nomad-cli

echo '...Installing homebrew essentials...'
brew install ntfs-3g
brew install cmake
brew install pow
brew install tree
brew install git bash-completion

echo '...Symlinking env .bash_profile to ~/.bash_profile ...'
rm $HOME/.bash_profile
ln .bash_profile $HOME/.bash_profile

echo '...Symlinking env .bashrc to ~/.bashrc ...'
rm $HOME/.bashrc
ln .bashrc $HOME/.bashrc

echo '...Symlinking env .gitconfig to ~/.gitconfig'
rm $HOME/.gitconfig
ln .gitconfig $HOME/.gitconfig

echo '...Symlinking .gitignore_global to ~/.gitignore_global'
rm $HOME/.gitignore_global
ln .gitignore_global $HOME/.gitignore_global

source .bash_profile
