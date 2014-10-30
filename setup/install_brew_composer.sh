#!/bin/bash

# Install composer
# brew install composer --ignore-dependencies
# curl -sS https://getcomposer.org/installer | php
brew update
brew tap homebrew/dupes
brew tap homebrew/php
brew install php55
brew install composer
composer global update