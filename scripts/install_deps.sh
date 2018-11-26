PLATFORM=`uname`

echo "Installing zplug..."
export ZPLUG_HOME=$HOME/.zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

echo "Installing node..."
nvm install lts/*
nvm alias default lts/*

if [[ $PLATFORM == 'Darwin' ]]; then
  echo "Determined macos... Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing Deps..."
  brew install nvim git tig ruby zsh cmake cmatrix autojump ripgrep tmux yarn watchman autoenv mongodb coreutils prettyping bat ncdu htop
  brew tap caskroom/fonts
  brew cask install font-fira-code react-native-debugger
  brew install gnu-sed --with-default-names
else
  echo "OS not supported... skipping..."
fi
