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

#iOS
brew install xcproj

#Languages

brew cleanup
