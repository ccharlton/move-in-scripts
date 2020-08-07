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
siege \
wraith

# Additional web dev software(s)
brew install qcachegrind --with-graphviz

# Misc. utilities
echo "Installing misc. stuff"
brew install \
libdvdcss \
graphviz \
ffmpeg \
youtube-dl 
