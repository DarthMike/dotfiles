#! /bin/bash

# Install dependencies
echo "Linking .tool-versions"
ln -s ".tool-versions" "$HOME/.tool-versions"

# Install asdf
echo "Installing asdf"
brew install asdf

# Install scarb
echo "Installing scarb"
asdf install scarb 2.9.2

# Install starknet-foundry
echo "Installing starknet-foundry"
asdf install starknet-foundry 0.35.1

# Install ruby
echo "Installing ruby"
asdf install ruby 3.3.0