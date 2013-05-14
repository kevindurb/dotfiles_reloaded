# where my zsh dir is
ZSH=$HOME/dotfiles_reloaded/oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $HOME/dotfiles_reloaded/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# todo completion
source $HOME/dotfiles_reloaded/todo/todo_completion

# plugins
plugins=(git osx brew zsh-syntax-highlighting)

# highlighting settings
ZSH_HIGHLIGHT_STYLES[path]='bold'

# colorized ls
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# my term paths
export PATH=/usr/local/share/npm/bin:/Users/kevin/pear/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'

#set my editor
export EDITOR=/usr/local/bin/vim

#make it easier to get to my rc files
export MYVIMRC=$HOME/.vimrc
export MYZSHRC=$HOME/.zshrc
export MYVIMKEYMAPS=$HOME/.vim/plugin/keymaps.vim
export MYVIMSETTINGS=$HOME/.vim/plugin/settings.vim

export PRO_BASE=$HOME/projects

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

TMOUT=30
TRAPALRM () {
	zle reset-prompt
}

PROMPT='
%{$fg[cyan]%}%n %{$reset_color%}@ %{$fg[cyan]%}%m %{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}$(prompt_char) '

RPROMPT='%{$fg[white]%}%t %W'

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[orange]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# aliases to make stuff faster
alias lss="ls -lAF"
alias gits="git status"
alias gitc="git commit -a"
alias gitp="git push origin"
alias gitd="git diff"
alias gitpu="git smart-pull"
alias gitl="git smart-log"
alias t="~/dotfiles_reloaded/todo/todo.sh"
alias localsql="mysql --auto-rehash -h localhost -u root -p"

# todo settings
export TODOTXT_DEFAULT_ACTION=ls

# pro cd function
pd() {
  local projDir=$(pro search $1)
  cd ${projDir}
}
