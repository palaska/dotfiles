#!/bin/sh

# Check for Claude Code
if test ! $(which claude)
then
  echo "  Installing Claude Code for you."
  curl -fsSL https://claude.ai/install.sh | bash
fi

exit 0