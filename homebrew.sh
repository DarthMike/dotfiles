#!/bin/sh

brew update
brew upgrade

#System
brew install ntfs-3g
brew install tree

#Tools
brew install tmux
brew install git
brew install --HEAD hub
brew install imagemagick

#IDEs
brew install ctags

#iOS
brew install xcproj
brew install xctool

#Languages

#Libs for libs :)
brew install phantomjs

brew cleanup
