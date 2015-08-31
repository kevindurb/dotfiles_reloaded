# vi: ft=zsh

DOTFILES=$HOME/dotfiles
SOURCES=$DOTFILES/sources
ZSH=$DOTFILES/oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $DOTFILES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting node npm git-extras vagrant)

# exports
source $SOURCES/exports

# prompt
source $SOURCES/prompt

# aliases
source $SOURCES/aliases

# functions
source $SOURCES/functions

# nvm
source $(brew --prefix nvm)/nvm.sh
