#! /bin/bash

if [[ -d "~/dotfiles" ]]; then
  echo "Dotfiles already installed! Exiting..."
  exit 1
fi

echo "Please enter SUDO password"
sudo echo "Installing..."

PLATFORM=`uname`;

if [[ $PLATFORM == 'Darwin' ]]; then
  echo "Determined OSX... Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing Deps..."
  brew install vim git tig ruby
  sudo gem install git-smart
elif which apt-get > /dev/null; then
  echo "Determined linux with apt..."
  echo "Installing Deps..."
  sudo apt-get install vim git tig ruby xclip
else
  echo "Couldnt determine OS... Exiting..."
  exit 1
fi

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

echo "Installing node..."
nvm install stable
nvm alias default stable

PREVIOUS_DIR=`pwd`;
cd ~

echo "Cloning repo..."
git clone git@bitbucket.org:kevindurb/dotfiles.git

echo "Setting up repo..."
cd ~/dotfiles
git submodule init
git submodule update

echo "Creating symlinks..."
cd ~
ln -s ~/dotfiles/gitconfig .gitconfig
ln -s ~/dotfiles/gitignore .gitignore
ln -s ~/dotfiles/zshrc     .zshrc
ln -s ~/dotfiles/zprofile  .zprofile
ln -s ~/dotfiles/vimrc     .vimrc
ln -s ~/dotfiles/vim       .vim
ln -s ~/dotfiles/zsh       .zsh

cd $PREVIOUS_DIR
echo "Dotfiles installed!"
