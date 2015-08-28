# where my zsh dir is
ZSH=$HOME/.oh-my-zsh

# zsh themes
source $ZSH/oh-my-zsh.sh

# syntax highlighting
source $HOME/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugins
plugins=(git osx brew zsh-syntax-highlighting node npm git-extras vagrant)

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

function mood {
  if [ $? = 0 ];
  then echo $fg[green]'^_^';
  else echo $fg[red]'O_O';
  fi;
}

PROMPT='
$(mood) %{$fg[blue]%}${PWD/#$HOME/~} %{$reset_color%}$(git_prompt_info)
%{$fg[blue]%}> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[orange]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# bindkey -v

# bindkey '^P' up-history
# bindkey '^N' down-history
# bindkey '^?' backward-delete-char
# bindkey '^h' backward-delete-char
# bindkey '^w' backward-kill-word
# bindkey '^r' history-incremental-search-backward
# bindkey 'jj' vi-cmd-mode

# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#     zle reset-prompt
# }

# zle -N zle-line-init
# zle -N zle-keymap-select
# export KEYTIMEOUT=1

# other aliases to make stuff faster
alias lss="ls -lAF"
alias lsd="ls -lAFd */"
alias rmvimswp="rm -rf ~/.vim/backup/*"
alias c="clear"
alias reqtime="curl -o /dev/null -s -w %{time_total}\\\n"
alias zzz="osascript -e 'tell application \"Finder\" to sleep'"
alias lockme="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias ql="qlmanage -p"
alias ccbtags="ctags -R --exclude=node_modules --exclude=resources --exclude=vendor --exclude=feature --exclude=sql --exclude=upgrades"
alias wiredaddress="ipconfig getifaddr en0"
alias wifiaddress="ipconfig getifaddr en1"
alias externaladdress="curl ipecho.net/plain; echo"

# jump to a project from anywhere
go () { cd ~/projects/$1; }
_go () { _files -W ~/projects -/; }
compdef _go go

# jump to a project from anywhere
ccb () { cd ~/Development/churchcommunitybuilder/app/$1; }
_ccb () { _files -W ~/Development/churchcommunitybuilder/app -/; }
compdef _ccb ccb

# docker link
export DOCKER_HOST=tcp://$(boot2docker ip 2>/dev/null):2375

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
