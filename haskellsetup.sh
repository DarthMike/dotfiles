#!/bin/sh

echo "...Setting up stack packages..."
stack install hasktags
stack install ghc-mod
stack install stylish-haskell

echo "...Done..."
