PLATFORM=`uname`

if [[ $PLATFORM == 'Darwin' ]]; then
  echo "Determined macos... Installing brew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "Installing Deps..."
  brew install nvim git tig ruby zsh cmake cmatrix autojump ripgrep tmux yarn watchman autoenv mongodb coreutils prettyping bat ncdu htop
  brew tap caskroom/fonts
  brew cask install font-fira-code react-native-debugger
  brew install gnu-sed --with-default-names
else
  echo "OS not supported... exiting..."
  exit 1
fi
