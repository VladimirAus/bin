#!/bin/bash

# Homebrew install
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update
brew doctor
export PATH="/usr/local/bin:$PATH"

# Install nodejs
brew install node
npm install -g grunt-cli

# Install compass
gem update --system
gem install compass