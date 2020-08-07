#!/bin/bash

# Run this early, just in case
brew update

# Install software via homebrew
echo "Installing common software"
brew install \
curl \
openssl \
wget \
zlib

# Web development
echo "Installing web development software"
brew install \
node \
phantomjs \
siege
# Old
#gem install wraith

# VRT
npm install -g backstopjs

# Additional web dev software(s)
brew install casperjs --devel
brew install qcachegrind --with-graphviz

# Misc. utilities
echo "Installing misc. stuff"
brew install \
ffmpeg \
graphviz \
imagemagick \
libdvdcss \
youtube-dl 
