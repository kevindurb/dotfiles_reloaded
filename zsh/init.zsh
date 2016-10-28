ZSH=$HOME/dotfiles/zsh

# antigen
source $ZSH/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions src
antigen bundle olivierverdier/zsh-git-prompt
antigen bundle git
antigen bundle osx
antigen bundle heroku
antigen bundle nvm
antigen bundle node
antigen bundle brew
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle compleat

# exports
source $ZSH/exports.zsh

# prompt
source $ZSH/prompt.zsh

# aliases
source $ZSH/aliases.zsh

# functions
source $ZSH/functions.zsh

# autocomplete ssh
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/.travis/travis.sh

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U compinit && compinit
