#!/bin/bash

set -e

DOTFILES_URL=https://raw.githubusercontent.com/byrontuckett/dot-files/main

starship(){
  curl "$DOTFILES_URL/starship/starship.toml" -o ~/.config/starship.toml
}

# ...@TODO more to do

# @TODO: help text 

# Source in this bad boy and go nuts!
