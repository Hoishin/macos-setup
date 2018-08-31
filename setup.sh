#!/usr/bin/env bash

# Exit on error
set -e

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install packages from Homebrew
brew update
brew upgrade
brew install ag
brew install aircrack-ng
brew install binutils
brew install binwalk
brew install cifer
brew install clang-format
brew install cloc
brew install coreutils
brew install cppcheck
brew install crystal-lang
brew install ctags
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install fd
brew install ffmpeg --with-chromaprint --with-fdk-aac --with-fontconfig --with-freetype --with-frei0r --with-game-music-emu --with-libass --with-libbluray --with-libbs2b --with-libcaca --with-libgsm --with-libmodplug --with-libsoxr --with-libssh --with-libvidstab --with-libvorbis --with-libvpx --with-opencore-amr --with-openh264 --with-openjpeg --with-openssl --with-opus --with-rtmpdump --with-rubberband --with-sdl2 --with-snappy --with-speex --with-tesseract --with-theora --with-tools --with-two-lame --with-wavpack --with-webp --with-x265 --with-xz --with-zeromq --with-zimg
brew install findutils
brew install flawfinder
brew install foremost
brew install git
brew install git-lfs
git lfs install
git lfs install --system
brew install gnupg
brew install gnu-sed
brew install grep
brew install hashpump
brew install hydra
brew install imagemagick --with-webp
brew install john
brew install knock
brew install libidn
brew install libmagic
brew install lua
brew install lynx
brew install mas
brew install moreutils
brew install neovim
brew install netpbm
brew install nmap
brew install openssh
brew install p7zip
brew install pigz
brew install pngcheck
brew install postgresql
brew install pv
brew install rename
brew install rethinkdb
brew install rlwrap
brew install screen
brew install socat
brew install sqlmap
brew install ssh-copy-id
brew install streamlink
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install tmux
brew install tree
brew install ucspi-tcp
brew install vbindiff
brew install wget
brew install xpdf
brew install xz
brew install yarn --without-node
brew install zopfli
brew install zsh
brew install zsh-syntax-highlighting
brew install mongodb
brew install nginx
brew install bat

# Fonts
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew cleanup

# Cask
brew tap homebrew/cask
brew cask install 1password
brew cask install 1password-cli
brew cask install atom
brew cask install discord
brew cask install docker
brew cask install gimp
brew cask install gitkraken
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install hyperswitch
brew cask install insomnia
brew cask install iterm2
brew cask install java
brew cask install kap
brew cask install karabiner-elements
brew cask install libreoffice
brew cask install obs
brew cask install postico
brew cask install slack
brew cask install spotify
brew cask install streamlink-twitch-gui
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install firefox
brew cask install fork

# Dependent of Java
brew install bfg
brew install sbt

# Install iterm2 colour theme
curl -L https://github.com/sindresorhus/iterm2-snazzy/raw/master/Snazzy.itermcolors > /tmp/Snazzy.itermcolors
open /tmp/Snazzy.itermcolors

# Install Node (nvm)
curl -L https://github.com/creationix/nvm/raw/master/install.sh | bash

# Install applications from App Store
mas install 1160374471 # PiPifier
mas install 441258766 # Magnet

# Change screen shot output directory
defaults write com.apple.screencapture location ~/Pictures/screenshots

# Enable hold-to-repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Install Plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Register brew zsh as acceptable shell
sudo sh -c "echo $(which zsh) >> /etc/shells"

# Make local bin
mkdir -p ~/bin

# Install pyenv and rbenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash

# Default to zsh
chsh -s $(which zsh)
zsh
