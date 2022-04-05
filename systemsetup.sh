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

	echo '...Setting up ruby...'
	rvm install ruby 2.6.5
	rvm use 2.6.5 --default
	rvm reload
}

linux_setup() {
	echo 'Nothing to do...'
}
