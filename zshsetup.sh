#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/sheels"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS
