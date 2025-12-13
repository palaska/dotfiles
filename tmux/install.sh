# Install tmux if brew is installed and tmux is not
if test $(which brew) && test ! $(which tmux)
then
  echo "  Installing Tmux for you."
  brew install tmux
  brew install tmux-mem-cpu-load
fi

exit 0