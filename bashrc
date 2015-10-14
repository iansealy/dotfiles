# Set environment variables if not set already
if [[ ! $ENVIRON_SET ]]; then
  . ~/.environ
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
