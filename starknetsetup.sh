#!/bin/sh

# Setup starknet development environment
# Requires asdf to be installed
asdf plugin add scarb
asdf install scarb latest
asdf global scarb latest
asdf plugin add starknet-foundry
asdf install starknet-foundry latest
asdf global starknet-foundry latest