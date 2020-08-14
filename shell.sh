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

      # Post setup configurations
      echo 'export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"' >> ~/.zshrc
      echo 'export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters' >> ~/.zshenv
      echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

      # Install color highlighting
      cat << EOF >> ~/.zshrc
      # Color highlighting
      alias ls='ls --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
      alias diff='diff --color=auto'
      
      # Color Man pages
      export LESS_TERMCAP_mb=$'\e[1;32m'
      export LESS_TERMCAP_md=$'\e[1;32m'
      export LESS_TERMCAP_me=$'\e[0m'
      export LESS_TERMCAP_se=$'\e[0m'
      export LESS_TERMCAP_so=$'\e[01;33m'
      export LESS_TERMCAP_ue=$'\e[0m'
      export LESS_TERMCAP_us=$'\e[1;4;31m'
      EOF

      # Make it your default shell
      chsh -s $(which zsh)
  else
      echo "You're already using Zsh shell."
      ${SHELL} --version
  fi
}

setup_shell_choice
