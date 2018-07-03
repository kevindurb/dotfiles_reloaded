PLATFORM=`uname`

if [[ $PLATFORM == 'Darwin' ]]; then
  echo "Determined macos... Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing Deps..."
  brew install vim git tig ruby zsh cmake cmatrix autojump ripgrep tmux yarn watchman autoenv mongodb
  brew tap caskroom/fonts
  brew cask install font-fira-code react-native-debugger
  brew services start mongodb
  brew install gnu-sed --with-default-names
else
  echo "OS not supported... exiting..."
  exit 1
fi
