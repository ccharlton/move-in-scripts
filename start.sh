#!/bin/bash

# Start from here...
start_here() {
  setup_work_home_folder
}

# Setup 'Work' folder
setup_work_home_folder() {
  source "work.sh"
  source "homebrew.sh"
  source "shell.sh"
}

start_here
