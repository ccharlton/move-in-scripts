#!/bin/bash

setup_shell_choice() {
  if [ ! -d ".zsh" ]
  then
      echo "Setting up 'Oh My Zsh' shell preference"
      brew install zsh zsh-completions
      # Make it your default shell
      chsh -s $(which zsh)
  else
      echo "You're already using Zsh shell."
      ${SHELL} --version
  fi
}

setup_shell_choice