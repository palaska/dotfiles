# Checking if brew is installed
if test ! $(which brew)
then
  echo "  Installing Tmux for you."
  brew install tmux
  brew install tmux-mem-cpu-load
fi

exit 0