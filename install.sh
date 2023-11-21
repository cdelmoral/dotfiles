#!/usr/bin/env bash

stow --restow bin
stow --restow zsh
stow --restow tmux

# TODO: re-organize nvim to not have submodules
# TODO: do we still need cheat?
