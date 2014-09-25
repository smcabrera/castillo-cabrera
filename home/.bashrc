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

# Some common filepaths
alias bloc='cd ~/code/bloccit/'
alias lafl='cd ~/code/pflAdmin/'
alias castle='cd /home/stephen/.homesick/repos/castillo-cabrera/'
alias blog='cd ~/code/smcabrera.github.io'
alias blogs='cd ~/Dropbox/journal/blog-seeds/'
alias blogd='cd ~/code/smcabrera.github.io/_drafts'

alias st='git status'
alias gac='git add . ; git commit -a' # git add all and commit

alias nitrous='ssh action@sae1.nitrousbox.com -p 22374' # Access my nitrous box instantly
alias ec2='ssh -i ~/.ssh/USB.pem ubuntu@ec2-54-94-151-143.sa-east-1.compute.amazonaws.com -p 22' # Instantly access my AWS EC2 instance
alias phps='php artisan serve'
alias phpt='php artisan tinker'
alias vagaws='vagrant up --provider=aws'
alias ebash='vim ~/.bashrc' # Edit this file...
alias bashe='vim ~/.bashrc' # sometimes I forget what I called this alias...
alias bs='source ~/.bashrc' # ...and source it

# Some aliases for the super handy timetrap gem
alias td='timetrap display'
alias tw='timetrap week'
alias tl='timetrap list'
alias tr='timetrap resume'


# Powerline

# if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    # source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fi

 function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
    }

    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
