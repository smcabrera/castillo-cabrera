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
#
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="robbyrussell" # Default theme
#ZSH_THEME="powerline"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games::$HOME/bin"

# If using composer to manage php dependencies, add it to the path
if [ -d "$HOME/.composer" ]; then
  export PATH="$PATH:$HOME/.composer/vendor/bin"
fi

# If using rbenv for managing ruby versions, add it to the path
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$PATH:$HOME/.rbenv/bin"
  export PATH="$PATH:$HOME/.rbenv/plugins/ruby-build/bin"
  export PATH="$PATH:$HOME/.rbenv/shims"
  export PATH="$PATH:$HOME/.rbenv/bin"
fi

# If working on a nitrous box and using autoparts as a package manager, add 'parts' to the path
if [ -d "$HOME/.parts" ]; then
  export PATH="$PATH:$HOME/.parts/bin"
  export PATH="$PATH:$HOME/.parts/sbin"
  export PATH="$PATH:$HOME/.parts/autoparts/bin"
fi

# If ruby gems installed in a .gem folder add them to the path
# Version 1.9.1 in this case
if [ -d "$HOME/.gem/ruby" ]; then
  export PATH="$PATH:$HOME/.gem/ruby/1.9.1/bin"
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=vim
[ -z "$TMUX" ] && export TERM=xterm-256color
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Preferred editor for local and remote sessions
 #if [[ -n $SSH_CONNECTION ]]; then
   #export EDITOR='vim'
 #else
   #export EDITOR='mvim'
 #fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
alias sandbox='cd ~/code/sandbox/'
alias lafl='cd /var/www/html/pfladmin/'
alias castle='cd $HOME/.homesick/repos/castillo-cabrera/'
alias blog='cd ~/blog/smcabrera.github.io'
alias blogs='cd ~/Dropbox/journal/blog-seeds/'
alias blogd='cd ~/code/smcabrera.github.io/_drafts'

alias st='git status'
alias gac='git add . ; git commit -a' # git add all and commit

alias nitrous='ssh action@sae1.nitrousbox.com -p 22374' # Access my nitrous box instantly
alias ocean='ssh root@104.131.72.62' # Access my digital ocean vps
alias ec2='ssh -i ~/.ssh/USB.pem ubuntu@ec2-54-94-151-143.sa-east-1.compute.amazonaws.com -p 22' # Instantly access my AWS EC2 instance
#alias phps='php artisan serve'
alias phps='php artisan serve --host 104.131.29.69' #passing my digital ocean host ip address instead of
alias phpt='php artisan tinker'
alias vagaws='vagrant up --provider=aws'
alias zshe='vim ~/.zshrc' # Edit this file
alias zs='source ~/.zshrc' # ...and source it

# Some aliases for the super handy timetrap gem
alias td='timetrap display'
alias tw='timetrap week'
alias tl='timetrap list'
alias tr='timetrap resume'
alias to='timetrap out ; timetrap week'
alias restart='sudo shutdown -r now'

# Open up your task list for editing
alias todoe="vim ~/Dropbox/GTD/todo.txt"

# Aliases for running tests
alias cr='codecept run'


alias nest='unset TMUX'

if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

export PATH="$HOME/.bin:$PATH"
