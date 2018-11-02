#!/bin/bash

set -eu

cd $(dirname $0)

echo "Installing tools with Homebrew"
./scripts/brew

echo "Setup git"
./scripts/git

echo "Setup node with nvm"
./scripts/node

echo "Setup ruby"
./scripts/ruby

echo "Setup python"
./scripts/python

# Install iterm2 colour theme
curl -fsL https://github.com/sindresorhus/iterm2-snazzy/raw/master/Snazzy.itermcolors > /tmp/Snazzy.itermcolors
open /tmp/Snazzy.itermcolors

# Enable hold-to-repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Register brew zsh as acceptable shell
echo $(which zsh) | sudo tee -a /etc/shells

# Make local bin
mkdir -p ~/bin

# Default to zsh
chsh -s $(which zsh)

cd $(dirname $0)/home

for i in $(find . -type f | cut -c 3-)
do
	mkdir -p $(dirname $HOME/$i)
	rm -f $HOME/$i
	ln -s $(pwd -P)/$i $(dirname $HOME/$i)/
done
