function prompt_git {
  echo "%{$reset_color%}$(git_super_status)"
}

function prompt_carrot {
  echo "%{$fg_bold[blue]%}> "
}

function prompt_collapsed_path {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN,  ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/)|/\$1|g
")
}

autoload -U colors && colors

PROMPT='
$(prompt_collapsed_path) $(prompt_carrot)'

RPROMPT='$(prompt_git)'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[gray]%}"
ZSH_THEME_GIT_PROMPT_STAGED=" %{$fg[yellow]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED=" %{$fg_bold[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{$fg[gray]%}%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg[gray]%}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg[gray]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[green]%}%{✔%G%}"
