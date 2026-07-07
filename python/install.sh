#!/bin/sh

# pyenv and pyenv-virtualenv are installed via the Brewfile (brew bundle runs
# before this script), so we only handle what Homebrew doesn't: uv and the
# actual Python versions.

# Install uv
if test ! $(which uv)
then
    echo "  Installing uv for you."
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# pyenv only exposes `pyenv install` after init; load it if it isn't already.
eval "$(pyenv init -)"

pyenv install --skip-existing 3.12
pyenv install --skip-existing 3.13
pyenv install --skip-existing 3.14

pyenv global 3.14

exit 0