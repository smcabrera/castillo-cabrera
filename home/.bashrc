echo "It's good to see you, $USER!"

# Defining the $EDITOR shell environment for tmuxinator
export EDITOR=vim
export HIST_FILE_SIZE=9999

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -z "$TMUX" ] && export TERM=xterm-256color

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Use powerline for the shell
#function _update_ps1() {
#   export PS1="$(~/powerline-shell.py $? 4> /dev/null)"
#}
#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# Load my bash aliases
if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

