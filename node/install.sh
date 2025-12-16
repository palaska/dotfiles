#!/bin/sh

# Check for nvm
if test ! $(which nvm)
then
  echo "  Installing nvm for you."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

  export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi

if test ! $(which node)
then
  echo "  Installing node for you."
  nvm install 22
  nvm install 24
fi

exit 0