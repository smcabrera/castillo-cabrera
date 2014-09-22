echo "Hi, I'm bash!"

# Defining the $EDITOR shell environment for tmuxinator
export EDITOR=vim
export HIST_FILE_SIZE=9999

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -z "$TMUX" ] && export TERM=xterm-256color

# Allowing me to use the todotxt shell script
alias todo='/home/$USER/Dropbox/GTD/todo.sh -d /home/$USER/Dropbox/GTD/todo.cfg'

# making ls faster and adding color
alias l="ls --color"
alias la="ls -a --color"
alias ll="ls -l --color"
alias lla="ls -la --color"

alias nitrous='ssh action@sae1.nitrousbox.com -p 22374'
alias st='git status'
alias bloc='cd /home/stephen/code/bloccit/'
alias lafl='cd /var/www/pflAdmin/'
alias st='git status'
alias gac='git add . ; git commit -a' # gac--git add all and commit
alias ec2='ssh -i ~/.ssh/USB.pem ubuntu@ec2-54-94-151-143.sa-east-1.compute.amazonaws.com -p 22'
alias castle='cd .homesick/repos/castillo-cabrera/'

# if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    # source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fi

 function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
    }

    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
