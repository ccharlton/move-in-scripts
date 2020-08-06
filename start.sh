#!/bin/bash

# Start from here...
start_here() {
  setup_work_home_folder
}

# Setup 'Work' folder
setup_work_home_folder() {
  source "work"
  source "homebrew"
  source "shell"
}

start_here
