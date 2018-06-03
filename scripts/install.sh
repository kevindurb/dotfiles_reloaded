#! /bin/bash

echo "Please enter SUDO password"
sudo echo "Installing..."

PLATFORM=`uname`
CURRENT_USER=`whoami`

if [[ $PLATFORM == 'Darwin' ]]; then
  echo "Determined OSX... Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing Deps..."
  brew install vim git tig ruby zsh cmake cmatrix autojump ripgrep tmux yarn watchman autoenv mongodb
  brew tap caskroom/fonts
  brew cask install font-fira-code react-native-debugger
  brew services start mongodb
  brew install gnu-sed --with-default-names
elif which apt-get > /dev/null; then
  echo "Determined linux with apt..."
  echo "Installing Deps..."
  sudo apt install vim git tig ruby xclip zsh cmake build-essential python-dev
else
  echo "Couldnt determine OS... Exiting..."
  exit 1
fi

echo "setting zsh to default..."
sudo chsh -s $(which zsh) $CURRENT_USER

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

echo "Installing node..."
nvm install stable
nvm alias default stable

PREVIOUS_DIR=`pwd`;
cd ~

echo "Setting up repo..."
cd ~/dotfiles
git submodule init
git submodule update

echo "Creating symlinks..."
cd ~
ln -s ~/dotfiles/gitconfig      ~/.gitconfig
ln -s ~/dotfiles/gitignore      ~/.gitignore
ln -s ~/dotfiles/zsh            ~/.zsh
ln -s ~/dotfiles/vim            ~/.vim
ln -s ~/dotfiles/tmux           ~/.tmux
ln -s ~/dotfiles/zsh/zshrc      ~/.zshrc
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/zprofile       ~/.zprofile
ln -s ~/dotfiles/git/gitconfig  ~/.gitconfig

echo "Creating vim backup dir..."
mkdir ~/.vim/backup

cd $PREVIOUS_DIR

echo "Installing vim plugins..."
vim +PlugInstall +qa

echo "Installing italics terminfo"
tic ~/dotfiles/xterm-256color-italic.terminfo

echo "Dotfiles installed!"
