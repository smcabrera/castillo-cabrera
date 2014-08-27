source ~/.rvm/scripts/rvm
# making ls faster and adding color
alias l="ls --color"
alias la="ls -a --color"
alias ll="ls -l --color"
alias lla="ls -la --color"

# Defining the $EDITOR shell environment for tmuxinator
export EDITOR=vim
export HIST_FILE_SIZE=9999


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -z "$TMUX" ] && export TERM=xterm-256color

# Automatically start in tmux
# Can't use this now because it screws me up with tilde.
# Maybe if I started using zsh...
# I could probably also figure out if I'm in tilda and say 'don't do this if I'm in tilda'
# if [[ "$TERM" != "screen-256color" ]]
# then
  # tmux attach-session -t "$USER" || tmux new-session -s "$USER"
  # exit
# fi

# Allowing me to use the todotxt shell script
alias todo='/home/$USER/Dropbox/GTD/todo.sh -d /home/$USER/Dropbox/GTD/todo.cfg'
alias nitrous='ssh action@sae1.nitrousbox.com -p 22374'

# if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    # source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fi

 function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
    }

    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

