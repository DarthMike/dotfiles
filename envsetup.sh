#!/bin/sh

echo '...Installing homebrew essentials...'
./homebrew.sh

echo '...Installing ruby essentials...'
gem install bundle
bundle install

echo '...Installing python essentials...'
./python.sh

# https://github.com/thoughtbot/laptop
number_of_cores=`sysctl -n hw.ncpu`
bundle config --global jobs `expr $number_of_cores - 1`


