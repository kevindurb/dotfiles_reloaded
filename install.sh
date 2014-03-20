#! /bin/bash
git submodule init
git submodule update
cd ~
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore .gitignore
ln -s dotfiles/zshrc .zshrc
ln -s dotfiles/zprofile .zprofile
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/vim .vim
ln -s dotfiles/oh-my-zsh .oh-my-zsh
