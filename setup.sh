#!/usr/bin/bash

mkdir -p ~/.config/
mkdir -p ~/.config/nvim/

shopt -s dotglob nullglob

cd .. && mv -f dot-nvim/* ~/.config/nvim/
rm -rf dot-nvim/
