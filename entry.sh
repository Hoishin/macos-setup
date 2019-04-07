set -e

mkdir -p ~/git/Hoishin
cd ~/git/Hoishin
git clone https://github.com/Hoishin/macos-setup.git
cd macos-setup
./setup
./sync
