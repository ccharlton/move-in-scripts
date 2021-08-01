#!/bin/bash

# Start from here...
start_here() {
  setup_work_home_folder
  mac_setup_xcode_license
}

# Setup 'Work' folder
setup_work_home_folder() {
  source "work.sh"
  source "homebrew.sh"
  source "shell.sh"
}

# Setup Xcode and accept Xcode license to get other parts rolling
mac_setup_xcode_license() {
  xcode-select --install
  xcodebuild -license
}

start_here
