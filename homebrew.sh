#!/bin/sh

brew update
brew upgrade

#System
brew install ntfs-3g
brew install tree
brew install gpg2
brew install sshfs

#Tools
brew install tmux
brew install git
brew install git-lfs
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
brew install z
brew install jq
brew install cloc

#IDEs
brew install ctags
brew install spim

#Swift/IOS
brew install kylef/formulae/swiftenv
brew install xcproj
brew install chisel
brew install xctool
brew install carthage
brew install swiftlint
brew install swiftformat
brew tap thoughtbot/formulae
brew install liftoff
brew install neonichu/formulae/azkaban
brew install finestructure/tap/arena  #https://github.com/finestructure/Arena

#Languages/Frameworks
brew install node
brew install python
brew install python3
brew install go --cross-compile-common

#Haskell
brew cask install haskell-platform

#Libs for libs :)
brew install phantomjs

#Build tools
brew install ninja
brew install cmake

#Blog
brew install hugo

#Apps
brew cask install qtspim
#brew cask install google-chrome

#Learning
brew install pacvim

brew cleanup
