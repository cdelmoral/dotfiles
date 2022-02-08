
#!/usr/bin/env bash

# Creates symbolic links to the repo configuration files in the zsh directory.
# Note that the script must be run from zsh directory.

rm ~/.zshrc
rm ~/.zsh_profile
ln -s ~/Projects/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/Projects/dotfiles/zsh/.zsh_profile ~/.zsh_profile
