#!/bin/sh

if test ! $(which rustup)
then
  echo "  Installing Rust for you."
  # -y runs non-interactively (no prompt); rustup installs into $HOME/.cargo
  # and $HOME/.rustup, so no sudo is required.
  curl https://sh.rustup.rs -sSf | sh -s -- -y --no-modify-path

  . "$HOME/.cargo/env"
fi

exit 0