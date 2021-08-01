#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
    brew update
    brew upgrade
fi

# Install software via homebrew
source "homebrew-formulas.sh"
source "homebrew-apps.sh"
