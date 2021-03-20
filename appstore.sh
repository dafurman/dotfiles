#!/usr/bin/env bash

# Install App Store apps.

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

# ======================
# Main installation here
# ======================

# Remove outdated versions from the cellar.
brew cleanup
echo "Installing Xcode"
mas install 497799835 # Xcode
echo "Installing Pixelmator Pro"
mas install 1289583905 # Pixelmator Pro
echo "Installing Pages"
mas install 409201541 # Pages
echo "Installing Numbers"
mas install 409203825 # Numbers
echo "Installing Honey"
mas install 1472777122 # Honey
# echo "Installing Dr. Unarchiver"
# mas install 1127253508 # Dr. Unarchiver
