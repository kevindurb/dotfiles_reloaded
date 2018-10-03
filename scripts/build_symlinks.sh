PREVIOUS_DIR=`pwd`;
cd ~
echo "creating .config if it doesnt already exist"
mkdir -p ~/.config

echo "clearing out old files"
rm -rf ~/.zsh
rm -rf ~/.vim
rm -rf ~/.tmux
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
rm -rf ~/.zprofile
rm -rf ~/.gitconfig
rm -rf ~/.gitignore
rm -rf ~/.myclirc
rm -rf ~/.pgclirc
rm -rf ~/.ctags
rm -rf ~/bin

echo "creating new symlinks"
ln -s ~/dotfiles/zsh            ~/.zsh
ln -s ~/dotfiles/vim            ~/.vim
ln -s ~/dotfiles/vim            ~/.config/.nvim
ln -s ~/dotfiles/tmux           ~/.tmux
ln -s ~/dotfiles/zsh/zshrc      ~/.zshrc
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zsh/zprofile   ~/.zprofile
ln -s ~/dotfiles/git/gitconfig  ~/.gitconfig
ln -s ~/dotfiles/git/gitignore  ~/.gitignore
ln -s ~/dotfiles/mycli/myclirc  ~/.myclirc
ln -s ~/dotfiles/pgcli/pgclirc  ~/.pgclirc
ln -s ~/dotfiles/ctags          ~/.ctags
ln -s ~/dotfiles/bin            ~/bin

echo "done"
cd $PREVIOUS_DIR
