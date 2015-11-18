# vi: ft=zsh

ZSH_PATH=$HOME/.zsh
ZSH=$ZSH_PATH/oh-my-zsh

source $ZSH/oh-my-zsh.sh
source $ZSH_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH_PATH/zsh-autosuggestions/autosuggestions.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting node npm git-extras vagrant)

# exports
source $ZSH_PATH/exports

# prompt
source $ZSH_PATH/prompt

# aliases
source $ZSH_PATH/aliases

# functions
source $ZSH_PATH/functions

# nvm
source $(brew --prefix nvm)/nvm.sh

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
