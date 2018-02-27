# vi: ft=zsh

# three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# fast repeat key
defaults write NSGlobalDomain KeyRepeat -int 0

# quitable finder
defaults write com.apple.finder QuitMenuItem -bool YES

# faster animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# make itunes not respond to media keys
# launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# turn on safari develop menu and inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# stop asking to use disks as time machines
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# airdrop over wired connection
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# disable app nap
defaults write NSGlobalDomain NSAppSleepDisabled -bool YES

# Delete all information saved by Spotlight
defaults delete com.apple.Spotlight

# Uncomment to prevent Spotlight to always introduce itself as new
defaults write com.apple.Spotlight useCount 5

# restart to apply settings
killall Finder
killall Dock
killall Spotlight
