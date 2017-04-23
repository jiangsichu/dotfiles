# Git
brew install git
brew install atom
git config --global user.name "Sichu Jiang"
git config --global user.email "jiangsichu@users.noreply.github.com"
git config --global credential.helper osxkeychain
git config --global core.editor "atom --wait"

# iTerm2
brew tap caskroom/cask
brew cask install iterm2

# Zsh
brew install zsh zplug
ln -s "$(pwd)/.zshrc" ~/.zshrc
(echo 'echo /usr/local/bin/zsh >> /etc/shells' | sudo -s) && chsh -s /usr/local/bin/zsh
