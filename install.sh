#!/bin/bash

# Get the directory where the script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlinks for each dotfile
ln -sf "$DOTFILES_DIR/.aliases" "$HOME/.aliases"
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"

# Make sure the script is executable
chmod +x "$DOTFILES_DIR/install.sh"

# Source the bash profile to apply changes
source "$HOME/.bash_profile"

echo "Dotfiles installation complete."
