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
ZSH_CUSTOM=~/.oh-my-zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git, ruby, gem, wd, rails, zsh-syntax-highlighting)

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

export PATH="$PATH:$HOME/.tim/"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=vim
[ -z "$TMUX" ] && export TERM=xterm-256color
#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

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

# To add new aliases or view current ones, go where they live--in the custom folder:
alias zalias='vim ~/.oh-my-zsh-custom/aliases.zsh'

if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

export PATH="$HOME/.bin:$PATH"
export NODE_PATH="/lib"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#legendary
echo "Syncing up your files with dropbox"
dropbox start

wd() {
  . /home/stephen/bin/wd/wd.sh
}
