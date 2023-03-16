# Remove and link configuration file
rm  -f ~/.tmux.conf
ln -s ~/Projects/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Initialize and update the tmux plugin manager submodule
git submodule init
git submodule update

# Create symbolic link to tpm repo
mkdir -p ~/.tmux/plugins/tpm
cp -a ./plugins/tpm/. ~/.tmux/plugins/tpm

# Install plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
