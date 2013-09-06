# where my zsh dir is
ZSH=$HOME/dotfiles_reloaded/oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $HOME/dotfiles_reloaded/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# todo completion
source $HOME/dotfiles_reloaded/todo/todo_completion

# super git status
source $HOME/dotfiles_reloaded/zsh-git-prompt/zshrc.sh

# plugins
plugins=(git osx brew zsh-syntax-highlighting)

# highlighting settings
ZSH_HIGHLIGHT_STYLES[path]='bold'

# colorized ls
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# my term paths
export PATH=$HOME/bin:/usr/local/share/npm/bin:$HOME/pear/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'

#set my editor
export EDITOR='subl -w'

#make it easier to get to my rc files
export MYVIMRC=$HOME/.vimrc
export MYZSHRC=$HOME/.zshrc
export MYVIMKEYMAPS=$HOME/.vim/plugin/keymaps.vim
export MYVIMSETTINGS=$HOME/.vim/plugin/settings.vim

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

PROMPT='
%{$fg[cyan]%}%n %{$reset_color%}@ %{$fg[cyan]%}%m %{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[orange]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# git aliases to make stuff faster
alias gits="tig status"
alias gitc="git commit -a"
alias gitp="git push origin"
alias gitd="git diff"
alias gitpu="git smart-pull"
alias gitl="tig"
alias gitch="git checkout"

# other aliases to make stuff faster
alias lss="ls -lAF"
alias t="~/dotfiles_reloaded/todo/todo.sh"
alias localsql="mysql --auto-rehash -h localhost -u root -p"

# fix tmux colors
alias tmux="TERM=screen-256color-bce tmux"

# todo settings
export TODOTXT_DEFAULT_ACTION=ls
