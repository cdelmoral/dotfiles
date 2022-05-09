#!/usr/bin/env bash

# Creates symbolic link for the cheat config file.

mkdir -p ~/.config/cheat
rm ~/.config/cheat/conf.yml
ln -s ~/Projects/dotfiles/cheat/conf.yml ~/.config/cheat/conf.yml
