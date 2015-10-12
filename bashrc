# Set environment variables if not set already
if [[ ! $ENVIRON_SET ]]; then
  . ~/.environ
fi

# Check if interactive
[[ $- == *i* ]] || return 0
