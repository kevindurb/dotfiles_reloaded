# my term paths
DROPBOX_BIN=$HOME/Dropbox/bin
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
export PATH=$DROPBOX_BIN:$HOME_BIN:$PEBBLE_BIN:$NPM_BIN:$PEAR_BIN:$RUBY_BIN:$USR_LOCAL_BIN:$USR_LOCAL_SBIN:$USR_BIN:$ROOT_BIN:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin

# autojump
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# vagrant helpers
if  [[ -f $VAGRANT_HELPERS ]]
then
  source $VAGRANT_HELPERS
fi
