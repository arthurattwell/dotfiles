# Load Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Set theme
ZSH_THEME="robbyrussell"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load bash aliases and functions
[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.functions ] && source ~/.functions
[ -f ~/.exports ] && source ~/.exports
[ -f ~/.extra ] && source ~/.extra

# Add any zsh-specific configurations below
