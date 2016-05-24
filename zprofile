# vi: ft=zsh

# my term paths
DROPBOX_BIN=$HOME/Dropbox/bin
HEROKU_BIN=/usr/local/heroku/bin
PEBBLE_BIN=$HOME/pebble-dev/PebbleSDK-3.0-dp7/bin
HOME_BIN=$HOME/bin
NPM_BIN=/usr/local/share/npm/bin
PEAR_BIN=$HOME/pear/bin
RUBY_BIN=/usr/local/opt/ruby/bin
USR_LOCAL_BIN=/usr/local/bin
USR_LOCAL_SBIN=/usr/local/sbin
USR_BIN=/usr/bin
ROOT_BIN=/bin
VAGRANT_HELPERS=$HOME/Dropbox\ \(CCBHQ\)/Vagrant/.vagrant_helpers

# path
export PATH=$DROPBOX_BIN:$HEROKU_BIN:$HOME_BIN:$PEBBLE_BIN:$NPM_BIN:$PEAR_BIN:$RUBY_BIN:$USR_LOCAL_BIN:$USR_LOCAL_SBIN:$USR_BIN:$ROOT_BIN:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# autojump
if which brew > /dev/null
then
  [[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh
fi

# vagrant helpers
if  [[ -f $VAGRANT_HELPERS ]]
then
  source $VAGRANT_HELPERS
fi

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
