#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

brew install alfred
brew install mas
brew install swiftlint
brew install iterm2
brew install bettertouchtool
brew install visual-studio-code
brew install sourcetree
brew install sf-symbols
brew install fastlane
brew install sublime-text
brew install google-chrome

# Personal
brew install steam
brew install discord
# brew install audacity
# brew install icons8

# Remove outdated versions from the cellar.
brew cleanup
