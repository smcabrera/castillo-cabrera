dotfiles='/home/stephen/.homesick/repos/castillo-cabrera/home'

alias ems='~/ngrok http -subdomain=wl-local 4000'
##################################
# Show/Hide hidden files
##################################
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

##################################
# Project-specific aliases
##################################
# I'm working on a gem and getting tired of building and installing again to make sure everything is working
alias go='gem build get_freaky.gemspec ; gem install get_freaky-0.1.2.pre.gem'

# I'm working on a gem so for the time being I'd like to run its exectuable whose name is cumbersome while it's still local
alias gf='bin/get_freaky'
# For opening up a console for my gem
alias bc='bin/console'

##################################
# General Stuff
##################################

alias startwork='tmuxinator start groupize && tmuxinator start prm'
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
alias blog='cd ~/workspace/smcabrera.github.io; tmux new -s blog'
alias music='/media/removable/USB\ Drive/Music/'
#
# This is a really cool program to access youtube via the console
# But I'm never gonna remember what it's called
alias youtube='mpsyt'
#alias yt='mpsyt'

##################################
# Git
##################################

alias st='git status'
alias gl='git log'
alias ga='git add .'
alias gc='git commit -v'
alias gac='git add . ; git commit -v' # git add all and commit
alias gp='git push'
alias co='git checkout'
alias gb='git branch -v'
alias gr='git remote -v'
alias gdh='git diff HEAD'

##################################
# VPS
##################################

alias nitrous='/Applications/Nitrous.app/Contents/Resources/bin/osx/nitrous-ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o PreferredAuthentications=publickey -o LogLevel=FATAL -p 32788 -i "/Users/stephen/Library/Application Support/Nitrous/Users/smcabrera/id_rsa" nitrous@54.201.222.68 && exit'
alias ec2='ssh -i ~/.ssh/USB.pem ubuntu@ec2-54-94-151-143.sa-east-1.compute.amazonaws.com -p 22' # Instantly access my AWS EC2 instance
#alias phps='php artisan serve'
alias restart='sudo shutdown -r now' # Restart the do box

##################################
# Ruby on Rails
##################################

alias bi="bundle install ; say bundle complete"
alias rdm="rake db:migrate ; rake db:test:prepare ; say rake finished"
alias g='bundle exec guard'
alias bx="bundle exec "
alias rs2='Rails serve -p 8080' # Serve local rails app on an alternative port
alias tests='bundle exec rspec spec ; say tests finished'
alias ftests='bundle exec rspec spec/features'
alias tt='rake white_label:import:galileo_mapping; say task finished'
alias rsg='rails s --port 4000'
alias rsgt='rails s --port 5000'
alias rsp='rails s'

##################################
# Timetrap
##################################
# Some aliases for the super handy timetrap gem

alias td='timetrap display'
alias tw='timetrap week'
alias tl='timetrap list'
#alias tr='timetrap resume'
alias to='timetrap out ; timetrap week'
alias tint='timetrap out ; timetrap sheet interruptions ; timetrap in ; watch timetrap week' # For when I'm interrupted and don't get the chance to note why
alias wt='watch timetrap today'

# Stop timetrap and put on a screensaver
alias pause='timetrap out ; timetrap week; cmatrix'

##################################
# Tmux
##################################

alias tls="tmux ls" # see my running tmux sessions
alias nest='unset TMUX'

##################################
# New
##################################
# Aliases that we've added recently and haven't organized here somehow

alias cdp='cd $(find . -type d | pick)' # cd with pick--open source command line fuzzy select: https://robots.thoughtbot.com/announcing-pick
