#!/bin/sh

brew update
brew upgrade

#System
brew install ntfs-3g
brew install tree

#Tools
brew install tmux
brew install git
brew install hub
brew install --HEAD hub
brew install imagemagick
brew install gource
brew install mergepbx
brew install sloccount

#IDEs
brew install ctags

#iOS
brew install xcproj
brew install chisel
brew install xctool
brew install carthage
brew install swiftlint

#Languages
brew install npm

#Libs for libs :)
brew install phantomjs

brew cleanup
