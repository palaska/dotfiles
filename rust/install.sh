#!/bin/sh

if test ! $(which rustup)
then
  echo "  Installing Rust for you."
  curl https://sh.rustup.rs -sSf | sh

  . "$HOME/.cargo/env"
fi

exit 0