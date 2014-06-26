source ~/.rvm/scripts/rvm
# making ls faster and adding color
alias l="ls --color"
alias la="ls -a --color"
alias ll="ls -l --color"
alias lla="ls -la --color"

# Defining the $EDITOR shell environment for tmuxinator
export EDITOR=vim


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -z "$TMUX" ] && export TERM=xterm-256color

# Automatically start in tmux
# Can't use this now because it screws me up with tilde. Maybe if I started using zsh...
# if [[ "$TERM" != "screen-256color" ]]
# then
  # tmux attach-session -t "$USER" || tmux new-session -s "$USER"
  # exit
# fi

# Allowing me to use the todotxt shell script
alias todo='/home/$USER/Dropbox/GTD/todo.sh -d /home/$USER/Dropbox/GTD/todo.cfg'
