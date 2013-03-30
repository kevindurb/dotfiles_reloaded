# where my zsh dir is
ZSH=$HOME/dotfiles_reloaded/oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $HOME/dotfiles_reloaded/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# todo completion
source $HOME/dotfiles_reloaded/todo/todo_completion

# plugins
plugins=(git osx brew zsh-syntax-highlighting vi-mode)

# fix backspace key
zle -A .backward-kill-word vi-backward-kill-word
zle -A .backward-delete-char vi-backward-delete-char

# highlighting settings
ZSH_HIGHLIGHT_STYLES[path]='bold'

# my term paths
export PATH=/Users/kevin/pear/bin:/usr/local/opt/ruby/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin
export NODE_PATH='/usr/local/lib/jsctags:${NODE_PATH}'

#set my editor
export EDITOR=/usr/local/bin/vim

#make it easier to get to my rc files
export MYVIMRC=$HOME/.vimrc
export MYZSHRC=$HOME/.zshrc
export MYVIMKEYMAPS=$HOME/.vim/plugin/keymaps.vim
export MYVIMSETTINGS=$HOME/.vim/plugin/settings.vim

# Change the Prompt
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}


PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%} : %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info)
$(virtualenv_info)$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

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
