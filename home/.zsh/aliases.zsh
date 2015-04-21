alias foo="echo 'You are a FOO foo!'"

dotfiles='/home/stephen/.homesick/repos/castillo-cabrera/home'

alias vimrc='vim $dotfiles/.vimrc' # Edit vimrc
alias zshe='vim $dotfiles/.zshrc' # Edit zshrc
alias zs='source ~/.zshrc' # ...and source it

alias todo='/home/$USER/Dropbox/GTD/todo.sh -d /home/$USER/Dropbox/GTD/todo.cfg'
alias todoe="vim ~/Dropbox/GTD/todo.txt" # Open up your task list for editing

# making ls faster and adding color
alias l="ls --color"
alias la="ls -a --color"
alias ll="ls -l --color"
alias lla="ls -la --color"

# Some common filepaths
alias castle='cd $HOME/.homesick/repos/castillo-cabrera/'
alias blog='cd ~/blog/smcabrera.github.io'
alias katas='cd ~/workspace/katas/'

##################################
# Git
##################################

alias st='git status'
alias ga='git add .'
alias gc='git commit -v'
alias gac='git add . ; git commit -a' # git add all and commit
alias gp='git push'
alias co='git checkout'
alias gb='git branch -v'

##################################
# VPS
##################################

alias nitrous='ssh action@sae1.nitrousbox.com -p 22374' # Access my nitrous box instantly
alias ec2='ssh -i ~/.ssh/USB.pem ubuntu@ec2-54-94-151-143.sa-east-1.compute.amazonaws.com -p 22' # Instantly access my AWS EC2 instance
#alias phps='php artisan serve'
alias restart='sudo shutdown -r now' # Restart the do box

##################################
# Ruby on Rails
##################################

alias g='bundle exec guard'
alias bx="bundle exec "
alias rs2='Rails serve -p 8080' # Serve local rails app on an alternative port
alias tests='bundle exec rspec'
alias ftests='bundle exec rspec spec/features'

##################################
# Timetrap
##################################
# Some aliases for the super handy timetrap gem

alias td='timetrap display'
alias tw='timetrap week'
alias tl='timetrap list'
alias tr='timetrap resume'
alias to='timetrap out ; timetrap week'
alias tint='timetrap out ; timetrap sheet interruptions ; timetrap in ; watch timetrap week' # For when I'm interrupted and don't get the chance to note why

# Stop timetrap and put on a screensaver
alias pause='timetrap out ; timetrap week; cmatrix'

##################################
# Tmux
##################################

alias tls="tmux ls" # see my running tmux sessions
alias nest='unset TMUX'


# Codeception
alias cr='codecept run'
alias car='codecept run acceptance' # Run all acceptance tests with codeception

##################################
# Laravel
##################################

alias phps='php artisan serve --host 104.131.29.69' #passing my digital ocean host ip address
alias phps2='php artisan serve --host 104.131.29.69 --port=8080' #passing my digital ocean host ip address and an alternative port
alias phpt='php artisan tinker'

##################################
# New
##################################
# Aliases that we've added recently and haven't organized here somehow

alias cdp='cd $(find . -type d | pick)' # cd with pick--open source command line fuzzy select: https://robots.thoughtbot.com/announcing-pick
