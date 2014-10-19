#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/sheels"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS

echo "...Changing shell to zsh"
chsh -s $NEWSHELL

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh
