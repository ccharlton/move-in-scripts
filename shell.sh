#!/bin/bash

setup_shell_choice() {
  if [ ! -d "$HOME/.zsh" ]
  then
      echo "Setting up 'Oh My Zsh' shell preference"
      brew install zsh

      # Install Oh-My-ZSH
      sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

      # Install ZSH additions
      brew install zsh-completions zsh-syntax-highlighting

      # Install ZSH themes
      git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

      # Make it your default shell
      chsh -s $(which zsh)
  else
      echo "You're already using Zsh shell."
      ${SHELL} --version
  fi
}

setup_shell_choice
