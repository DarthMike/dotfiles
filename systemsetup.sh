#!/bin/sh

echo '...Installing RVM...'
curl -sSL https://get.rvm.io | bash -s stable

echo '...Installing homebrew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/boneyard

echo '...Setting up ruby 2.1.2...'
rvm install ruby 2.1.2
rvm alias create default ruby-2.1.2
rvm reload
