#!/bin/bash

# Install software via homebrew
echo "Installing common software"
brew install \
curl \
openssl \
openssl-devel \
wget \
zlib \
zlib-devel

# Web development
echo "Installing web development software"
brew install \
kcachegrind \
siege \
valgrind \
wraith

# Misc. utilities
echo "Installing misc. stuff"
brew install \
libdvdcss \
youtube-dl