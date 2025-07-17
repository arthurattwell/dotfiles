#!/bin/bash

# Get the directory where the script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install Oh My Zsh if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Create symlinks for each dotfile
ln -sf "$DOTFILES_DIR/.aliases" "$HOME/.aliases"
ln -sf "$DOTFILES_DIR/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Make sure the script is executable
chmod +x "$DOTFILES_DIR/install.sh"

# Source the appropriate profile based on shell
if [ -n "$ZSH_VERSION" ]; then
    source "$HOME/.zshrc"
else
    source "$HOME/.bash_profile"
fi

echo "Dotfiles installation complete."
