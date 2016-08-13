#!/bin/sh

echo "...Setting up stack packages..."
stack install hasktags
stack install ghc-mod
stack install stylish-haskell
stack install hlint
stack install happy


echo "...Done..."
