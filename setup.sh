#!/usr/bin/env bash

echo "Starting install of pyenv itself"
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH

echo "Now installing virtualenv into pyenv"
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

echo "Finished virtualenv install, now installing Python 3.7"
pyenv install 3.8.5

echo "Finished installing Python 3.7, now installing ClusterParser and associated libraries"
pyenv virtualenv 3.8.5 datasciencebookcamp
pyenv activate datasciencebookcamp
pip install -r requirements.txt

echo "***Installation finished.  You'll need to reactivate your shell by either typing 'source ~/.bash_profile', or restarting the shell entirely.  After that, use 'pyenv activate ClusterImage' to load the necessary environment***"

