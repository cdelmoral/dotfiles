#!/usr/bin/env bash

mkdir -p ~/.config/nvim
cp -a ./kickstart/. ~/.config/nvim

mkdir -p ~/.config/nvim/lua/custom/plugins
cp ./lua/custom/plugins/*.lua ~/.config/nvim/lua/custom/plugins

mkdir -p ~/.config/nvim/after/plugin
cp ./after/plugin/*.lua ~/.config/nvim/after/plugin

mkdir -p ~/.config/nvim/ftdetect
cp ./ftdetect/*.vim ~/.config/nvim/ftdetect

mkdir -p ~/.config/nvim/syntax
cp ./syntax/*.vim ~/.config/nvim/syntax
