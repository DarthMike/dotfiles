#!/bin/sh

case "$OSTYPE" in
	darwin*)  osx_setup();;
	linux*)   linux_setup();;
	*)        echo "Nothing to do" ;;
esac

osx_setup() {
	echo '...Installing RVM...'
	curl -sSL https://get.rvm.io | bash -s stable

	echo '...Installing homebrew...'
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap homebrew/boneyard

	echo '...Setting up ruby 2.2.2...'
	rvm install ruby 2.2.2
	rvm alias create default ruby-2.2.2
	rvm reload

	echo '...Installing wireshark...'
	echo '...Downloading development version 2.0.0... Check if it's released!'
	curl https://1.na.dl.wireshark.org/osx/Wireshark%202.0.0rc2%20Intel%2064.dmg > wireshark.dmg
	open wireshark.dmg
}

linux_setup() {
	echo 'Nothing to do...'
}
