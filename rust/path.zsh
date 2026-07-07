# Rust / cargo
# rustup is installed with --no-modify-path, so we own the PATH entry here
# instead of letting it edit shell profiles.

if [ -d "$HOME/.cargo/bin" ]
then
  export PATH="$HOME/.cargo/bin:$PATH"
fi
