# https://gist.github.com/ibraheem4/ce5ccd3e4d7a65589ce84f2a3b7c23a3

# Checking if brew is installed
if test ! $(which brew)
then
  echo "  Installing Postgres for you."
  brew install postgresql
fi

exit 0
