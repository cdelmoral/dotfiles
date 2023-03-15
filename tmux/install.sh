# Remove and link configuration file
rm -rf ~/.tmux.conf
ln -s ~/Projects/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Initialize and update the tmux plugin manager submodule
git submodule init
git submodule update

# Create symbolic link to tpm repo
ln -s ~/Projects/dotfiles/tmux/plugins/tpm ~/.tmux/plugins

# Install plugins
~/.tmux/plugins/tpm/scripts/update_plugin.sh
