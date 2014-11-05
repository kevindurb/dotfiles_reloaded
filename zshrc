# where my zsh dir is
ZSH=$HOME/.oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $HOME/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting)

# highlighting settings
ZSH_HIGHLIGHT_STYLES[path]='bold'

# colorized ls
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# set my editor
export EDITOR='vim'

# make it easier to get to my rc files
export MYVIMRC=$HOME/.vimrc
export MYZSHRC=$HOME/.zshrc
export MYVIMKEYMAPS=$HOME/.vim/plugin/keymaps.vim
export MYVIMSETTINGS=$HOME/.vim/plugin/settings.vim

PROMPT='
%{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[orange]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# git aliases to make stuff faster
alias gits="tig status"
alias gitc="git commit -a"
alias gita="git amend"
alias gitcp="git cherry-pick"
alias gitp="git push origin"
alias gitd="git diff -w"
alias gitpu="git smart-pull"
alias gitl="tig"
alias gitch="git checkout"
alias gitdep="git push deploy master"
alias ungit="git undo -h"

# other aliases to make stuff faster
alias lss="ls -lAF"
alias c="clear"
alias localsql="mysql --auto-rehash -h localhost -u root -p"

#macvim
#alias vim="mvim"

# jump to a project from anywhere
go () { cd ~/projects/$1; }
_go () { _files -W ~/projects -/; }
compdef _go go

# jump to a project from anywhere
ccb () { cd ~/dev/$1; }
_ccb () { _files -W ~/dev -/; }
compdef _ccb ccb

# todo settings
export TODOTXT_DEFAULT_ACTION=ls

# docker link
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

[ -s "/Users/kdurbin/.nvm/nvm.sh" ] && . "/Users/kdurbin/.nvm/nvm.sh" # This loads nvm
