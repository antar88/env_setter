#!/bin/zsh

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
#source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="antar"
#eval "$(rbenv init -)"

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }


# Use sublimetext for editing config files
alias zshconfig="atom ~/.zshrc"
alias envconfig="atom ~/env.sh"

alias p="cd ~/projects"
alias customize="sudo vim ~/.zshrc"

alias uncommit="git reset --soft HEAD\^"

#. ~/.awsume/awsumerc # awsume config
