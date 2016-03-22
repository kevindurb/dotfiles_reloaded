ZSH=$HOME/dotfiles/zsh

#antigen
source $ZSH/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle olivierverdier/zsh-git-prompt
antigen bundle git
antigen bundle heroku
antigen bundle npm
antigen bundle brew
antigen bundle command-not-found

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
[ -f /Users/kdurbin/.travis/travis.sh ] && source /Users/kdurbin/.travis/travis.sh
