#!/usr/bin/env bash

echo $(pwd)
selected=$(cat ~/.local/scripts/cht.sh-languages ~/.local/scripts/cht.sh-commands | fzf)

if [[ -z $selected ]]; then
	exit 0
fi

read -p "Query: " query

if echo "$languages" | grep -qs $selected; then
	bash -c "curl -s cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
	bash -c "curl -s cht.sh/$selected~$query | less"
fi
