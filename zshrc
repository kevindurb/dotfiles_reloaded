# vi: ft=zsh

ZSH_PATH=$HOME/.zsh
ZSH=$ZSH_PATH/oh-my-zsh

source $ZSH/oh-my-zsh.sh
source $ZSH_PATH/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH_PATH/zsh-autosuggestions/autosuggestions.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting node npm git-extras vagrant nvm)

# exports
source $ZSH_PATH/exports

# prompt
source $ZSH_PATH/prompt

# aliases
source $ZSH_PATH/aliases

# functions
source $ZSH_PATH/functions

if which brew > /dev/null
then
  # nvm
  source $(brew --prefix nvm)/nvm.sh

  # autojump
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fi

# autocomplete ssh
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

if which thefuck > /dev/null
then
  eval $(thefuck --alias)
fi
