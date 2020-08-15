#!/bin/bash

# Run this early, just in case
brew update

# Install software via homebrew
echo "Installing common software"
brew install \
curl \
htop \
git \
lsd \
python3 \
openssl \
tree \
wget \
zlib

# Install fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# YTOP
brew tap cjbassi/ytop
brew install ytop

# BashTop
python3 -m pip install psutil
brew install osx-cpu-temp

# Web development
echo "Installing web development software"
brew install \
composer \
node \
siege
# Old
#gem install wraith

# Composer
composer global require hirak/prestissimo

# VRT
npm install -g backstopjs

# Testing suites
#brew cask install phantomjs

# Additional web dev software(s)
brew install casperjs --devel
brew install qcachegrind --with-graphviz
brew cask install lando

# Misc. utilities
echo "Installing misc. stuff"
brew install \
ffmpeg \
graphviz \
imagemagick \
imageoptim-cli \
libdvdcss \
youtube-dl 

# Post install configurations
echo 'export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"' >> ~/.bashrc
echo 'export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"' >> ~/.zshrc
