# vi: ft=zsh

CURRENT_DIRECTORY=`pwd`

# setup vim plugins
vim +PluginUpdate +PluginClean +qa

# vim youcompleteme
cd ~/dotfiles/vim/bundle/YouCompleteMe
./install.py --clang-completer --tern-completer

# tmux plugins
~/dotfiles/tmux/plugins/tpm/bin/install_plugins
~/dotfiles/tmux/plugins/tpm/bin/update_plugins all

cd $CURRENT_DIRECTORY
