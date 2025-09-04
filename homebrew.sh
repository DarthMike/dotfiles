#!/bin/sh

brew update
brew upgrade

#System
brew install tree
brew install gpg2
brew install sshfs
brew install asdf

#Tools
brew install tmux
brew install git
brew install git-lfs
brew install gh
brew install hg
brew install bzr
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
brew install uv

#IDEs
brew install spim

#Swift/IOS
brew install kylef/formulae/swiftenv
# brew install xcproj
brew install chisel
# brew install xctool
brew install swiftlint
brew install swiftformat
# brew tap thoughtbot/formulae
# brew install liftoff
brew install neonichu/formulae/azkaban
brew install finestructure/tap/arena  #https://github.com/finestructure/Arena

# Swift/iOS for Cursor
brew install xcode-build-server
brew install xcbeautify

#Languages/Frameworks
brew install node
brew install python
brew install python3
brew install go --cross-compile-common

#Build tools
brew install ninja
brew install cmake

#Blog
brew install hugo

#Learning
brew install pacvim

brew cleanup
