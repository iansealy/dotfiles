# Set environment variables if not set already
if [[ ! $ENVIRON_SET ]]; then
  . ~/.environ
  . ~/.environ.private
fi

# Check if interactive
[[ $- == *i* ]] || return 0

# Prompt
PS1='\[\e[1m\][\u@$(scutil --get ComputerName)]\[\e[m\]\w\$ '

# History
shopt -s histappend
HISTSIZE=1000000
HISTFILESIZE=1000000000
HISTCONTROL=ignoreboth
PROMPT_COMMAND='history -a'

# Bash completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi

# Aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi
