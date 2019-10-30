#!/bin/bash

# Install software via homebrew
echo "Installing common software"
brew install \
wget \
curl
#valgrind \
#kcachegrind \
#puppet


# Web development
echo "Installing web development software"

brew install \
siege \
wraith

# Misc. utilities
echo "Installing misc. stuff"

brew install \
youtube-dl