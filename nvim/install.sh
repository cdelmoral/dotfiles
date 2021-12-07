#!/usr/bin/env bash
mkdir -p ~/.config/nvim/plugin

for f in `find . -type file -name "*.vim"`; do
    echo "~/Projects/dotfiles/nvim/$f -> ~/$f"
    rm -rf ~/$f
    ln -s ~/Projects/dotfiles/nvim/$f ~/$f
done

