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

# powerline!
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

#PROMPT='
#%{$fg[cyan]%}%n %{$reset_color%}@ %{$fg[cyan]%}%m %{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
#%{$fg[blue]%}$(prompt_char) '
PROMPT='
%{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
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
alias ccb="cd ~/projects/ccb"
alias resources="cd ~/projects/resources"

# other aliases to make stuff faster
alias lss="ls -lAF"
alias c="clear"
alias localsql="mysql --auto-rehash -h localhost -u root -p"

# todo settings
export TODOTXT_DEFAULT_ACTION=ls

[ -s "/Users/kdurbin/.nvm/nvm.sh" ] && . "/Users/kdurbin/.nvm/nvm.sh" # This loads nvm
