#Because I like my shell to be polite...

h=`date +%H`

if [ $h -lt 12 ]; then
  g='Good morning'
elif [ $h -lt 18 ]; then
  g='Good afternoon'
else
  g='Good evening'
fi

echo "$g $USER!"

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

alias todo='/home/$USER/Dropbox/GTD/todo.sh -d /home/$USER/Dropbox/GTD/todo.cfg'

alias aliase='vim ~/.bash_aliases' # Edit this file...

# making ls faster and adding color
alias l="ls --color"
alias la="ls -a --color"
alias ll="ls -l --color"
alias lla="ls -la --color"

# Some common filepaths
alias bloc0='cd ~/code/bloccit/'
alias bloc='cd ~/code/blocitoff/'
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
alias bs='source ~/.bashrc' # ...and source it

# Some aliases for the super handy timetrap gem
alias td='timetrap display'
alias tw='timetrap week'
alias tl='timetrap list'
alias tr='timetrap resume'
alias to='timetrap out ; timetrap week'

alias nest='unset TMUX'

# Load my bash aliases
#if [ -f ~/.bash_aliases ]; then
#   source ~/.bash_aliases
#fi

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ "

   # gitprompt configuration

   # Set config variables first
   GIT_PROMPT_ONLY_IN_REPO=1

   # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status

   GIT_PROMPT_START="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]"    # uncomment for custom prompt start sequence
   GIT_PROMPT_END="\$ "      # uncomment for custom prompt end sequence

   # as last entry source the gitprompt script
   source ~/.bash-git-prompt/gitprompt.sh


