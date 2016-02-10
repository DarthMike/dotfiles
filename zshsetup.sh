#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/shells"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "...Linking oh-my-zsh configs..."
CUSTOM_ALIASES="$HOME/.oh-my-zsh/custom/aliases.zsh"
rm $CUSTOM_ALIASES
ln .oh-my-zsh/custom/aliases.zsh $CUSTOM_ALIASES
ASYNC_PATH=".oh-my-zsh/custom/async.zsh"
PURE_PATH=".oh-my-zsh/custom/pure.zsh"
rm -rf ASYNC_PATH
rm -rf PURE_PATH
git submodule update --init --recursive
cp pure/asynch.zsh $ASYNC_PATH
cp pure/pure.zsh $PURE_PATH

echo '...Changing shell to ZSH...'
chsh -s $NEWSHELL
echo 'Change shell by adding to /etc/shells "/usr/local/bin/zsh"'
