#!/usr/bin/env bash

set -e

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv install 2.7.15
pyenv install 3.7.0

pyenv virtualenv 2.7.15 neovim2
pyenv virtualenv 3.7.0 neovim3

pyenv activate neovim2
pip install neovim
PY_PATH_2=$(pyenv which python)

pyenv activate neovim3
pip install neovim
PY_PATH_3=$(pyenv which python)

pip install flake8
ln -s $(pyenv which flake8) ~/bin/flake8

echo "Add the following lines to your init.vim"
echo
echo "let g:python_host_prog = '$PY_PATH_2'"
echo "let g:python3_host_prog = '$PY_PATH_3'"

