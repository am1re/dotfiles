# Work in progress

brew install rcm
env RCRC=$HOME/.dotfiles/rcrc rcup

brew tap homebrew/cask-fonts         # You only need to do this once!
brew install font-fira-code-nerd-font
brew install ghq
brew install git-lfs

iterm2 theme
fish shell theme
tmux theme
vim theme

defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

inspiration 
* https://github.com/craftzdog/dotfiles-public
* https://github.com/thoughtbot/dotfiles
* https://github.com/christoomey/dotfiles
