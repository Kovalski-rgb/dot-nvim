#!/usr/bin/bash

rm -rfi ~/.config/nvim/
mkdir -p ~/.config/ ~/.config/nvim/

shopt -s dotglob nullglob

cd .. && mv -f dot-nvim/* ~/.config/nvim/
rm -rf dot-nvim/
