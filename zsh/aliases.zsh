# other aliases to make stuff faster
alias lss="ls -lAF"
alias lsd="ls -lAFd */"
alias rmvimswp="rm -rf ~/.vim/backup/*"
alias c="clear"

# work / vagrant
alias ccbtags="ctags -R --exclude=node_modules --exclude=resources --exclude=vendor --exclude=feature --exclude=sql --exclude=upgrades"
alias vssh="ssh -i ~/.vagrant.d/insecure_private_key vagrant@127.0.0.1 -p 2200"

# useful copy paste
if ! which pbpaste > /dev/null; then
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi
