# Set environment variables
. ~/.environ

# Source Bash-specific config if running Bash
if [ "$BASH" ] && [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
