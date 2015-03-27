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

# other aliases to make stuff faster
alias lss="ls -lAF"
alias c="clear"
alias reqtime="curl -o /dev/null -s -w %{time_total}\\\n"

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

[ -s "/Users/kdurbin/.nvm/nvm.sh" ] && . "/Users/kdurbin/.nvm/nvm.sh" # This loads nvm
