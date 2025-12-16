#!/bin/sh

# Check for pyenv
if test ! $(which pyenv)
then
    echo "  Installing pyenv for you."
    curl https://pyenv.run | bash

    export PYENV_ROOT="$HOME/.pyenv"
    [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"

    # Install uv
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi


pyenv install 3.12
pyenv install 3.13
pyenv install 3.14

pyenv global 3.14

exit 0