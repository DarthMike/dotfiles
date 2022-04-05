#!/bin/sh


if hash brew 2>/dev/null; then
echo "...Installing homebrew zsh..."
	brew install zsh

	echo "...Adding hombrew zsh to /etc/shells "
	NEWSHELL="/usr/local/bin/zsh"
	SHELLS="/etc/shells"
	grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS
fi

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "...Linking oh-my-zsh configs..."
CUSTOM_ALIASES="$HOME/.oh-my-zsh/custom/aliases.zsh"
rm $CUSTOM_ALIASES
ln .oh-my-zsh/custom/aliases.zsh $CUSTOM_ALIASES
echo "...Installing pure/async..."
npm install --global pure-prompt
echo "...Setting up autoupdate..."
AUTOUPDATE="$HOME/.oh-my-zsh/custom/autoupdate"
ln -s .oh-my-zsh/custom/autoupdate $AUTOUPDATE

if hash brew 2>/dev/null; then
	echo '...Changing shell to ZSH...'
	chsh -s $NEWSHELL
	echo 'Change shell by adding to /etc/shells "/usr/local/bin/zsh"'
fi
