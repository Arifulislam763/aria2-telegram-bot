#!/usr/bin/env bash

set -e

export TOKEN="5749543675:AAGQj_Fc-DwohmH3sg7HO6c45T6KJ3CiTDw"
VENV_NAME="venv"
VENV=$PWD/$VENV_NAME

# Setup virtualenv
virtualenv $VENV_NAME
source $VENV/bin/activate

# Install requirements
pip install -r requirements.txt

# Start diana and the bot
./diana/dad start
./bot.py
./diana/dad stop
