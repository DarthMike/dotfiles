#!/bin/sh

echo '...Installing RVM...'
curl -sSL https://get.rvm.io | bash -s stable

echo '...Installing homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '...Setting up ruby 2.1.0...'
rvm install ruby 2.1.0
rvm use ruby-2.1.0

echo '...Installing ruby essentials...'
gem install cocoapods
gem install bundler
gem install sinatra

echo '...Installing homebrew essentials...'
brew install ntfs-3g
brew install cmake
brew install pow
brew install tree
brew install git bash-completion

echo '...Symlinking env .bash_profile to ~/.bash_profile ...'
rm ~/.bash_profile
ln .bash_profile ~/.bash_profile

echo '...Symlinking env .bashrc to ~/.bashrc ...'
rm ~/.bashrc
ln .bashrc ~/.bashrc

source .bash_profile
