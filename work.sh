#!/bin/bash

setup_work_home_folder() {
  local WORK_HOME_FOLDER="${HOME}/Work"
  # Setup work folder, if it doesn't exist
  if [ ! -d "${WORK_HOME_FOLDER}" ]
  then
      echo "Setting up 'Work' folder in Home directory"
      mkdir "${WORK_HOME_FOLDER}"
  else
      echo "'Work' folder already exists in Home directory"
  fi
}

setup_work_home_folder