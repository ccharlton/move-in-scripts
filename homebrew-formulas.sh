#!/bin/bash

# Run this early, just in case
brew update

# Install software via homebrew
echo "Installing common software"
brew install \
#curl \
htop \
#git \
git-extras \
git-flow \
lazygit \
lsd \
#python3 \
openssl \
tree \
wget \
zlib \
zsh-completions

# Install fonts
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

# Bottom (formerly YTOP)
#brew tap cjbassi/ytop
#brew install ytop
brew install bottom

# BashTop
python3 -m pip install psutil
brew install osx-cpu-temp

# Git GTM
brew tap git-time-metric/gtm
brew install gtm

# Web development
echo "Installing web development software"
brew install \
composer \
node \
siege
# Old
#gem install wraith

# Composer v1
#composer global require hirak/prestissimo

# VRT
npm install -g backstopjs

# Testing suites
#brew install phantomjs

# Additional web dev software(s)
brew install casperjs --devel
brew install qcachegrind --with-graphviz
brew install lando
# Add the Lando CA -- https://blog.lando.dev/2020/03/20/_5-things-to-do-after-you-install-lando/#macos
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ~/.lando/certs/lndo.site.pem


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
