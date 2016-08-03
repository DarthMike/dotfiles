#!/bin/sh

brew update
brew upgrade

#System
brew install ntfs-3g
brew install tree
brew install gpg2

#Tools
brew install tmux
brew install git
brew install hg
brew install bzr
brew install hub
brew install --HEAD hub
brew install imagemagick
brew install gource
brew install mergepbx
brew install sloccount
brew install graphviz
brew install fzf
brew install checkbashisms
brew install ffmpeg

#IDEs
brew install ctags
brew install spim

#Swift
brew install kylef/formulae/swiftenv

#iOS
brew install xcproj
brew install chisel
brew install xctool
brew install carthage
brew install swiftlint
brew tap thoughtbot/formulae
brew install liftoff
brew install neonichu/formulae/azkaban
brew install sourcekitten

#Languages/Frameworks
brew install node
brew install python
brew install python3
brew cask install haskell-platform
brew install go --cross-compile-common

#Libs for libs :)
brew install phantomjs

#Build tools
brew install ninja
brew install cmake

#Apps
brew cask install qtspim
#brew cask install google-chrome

brew cleanup
