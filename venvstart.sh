#!/bin/bash

unset PYTHONPATH

VENV_DIR="venv"

if [ ! -d "$VENV_DIR" ]; then
  python3 -m venv "$VENV_DIR" && \
  source "$VENV_DIR"/bin/activate && \
  python -m pip install --upgrade pip setuptools wheel && \
  python -m pip install -r simulator/requirements.txt && \
  python -m pip install -e ./Verification && \
  python -m pip install -e ./UniKER && \
  python -m pip install -e ./Sensing_planning_framework 
fi

alias deactivate=exit

export BASE_PATH=`dirname "$(readlink -f "$0")"`
export PRISM_PATH="$BASE_PATH/prism/prism/bin"
export PRISM_WSL="no"

exec bash --init-file <(echo ". ~/.bashrc; . $VENV_DIR/bin/activate;")
