#!/usr/bin/env bash

mkdir -p ~/.config/nvim
cp -a ./kickstart/. ~/.config/nvim

mkdir -p ~/.config/nvim/after/plugin
cp ./after/plugin/*.lua ~/.config/nvim/after/plugin

