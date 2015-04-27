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

####################################
# Plugins
####################################

#source ~/.zsh/antigen/antigen.zsh
source "${HOME}/.zsh/zgen/zgen.zsh"

saved=false

if ! zgen saved; then
  echo "Creating a zgen save"
  zgen oh-my-zsh
  zgen load rhysd/zsh-bundle-exec
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/ruby
  zgen oh-my-zsh plugins/heroku
  zgen oh-my-zsh plugins/command-not-found

  zgen load djui/alias-tips
  zgen load StackExchange/blackbox
  zgen load ascii-soup/zsh-url-highlighter
  zgen load Tarrasch/zsh-colors
  zgen load tarruda/zsh-autosuggestions
  zgen load djui/alias-tips

  # Theme
  zgen oh-my-zsh themes/fox

  zgen load zsh-users/zsh-syntax-highlighting

  # nicoulaj's moar completion files for zsh
  zgen load zsh-users/zsh-completions src

  # ZSH port of Fish shell's history search feature.
  zgen load zsh-users/zsh-history-substring-search

  # Syntax highlighting bundle.
  zgen load zsh-users/zsh-syntax-highlighting

  zgen save
fi

####################################
# END Plugins
####################################

# Beeps are annoying
setopt NO_BEEP

setopt VI

#source $ZSH/oh-my-zsh.sh

# ################################
# PATH
# ################################

export PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games::$HOME/bin"

export PATH="$HOME/.bin:$PATH"
export NODE_PATH="/lib"

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

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases

# To add new aliases or view current ones, go where they live--in the custom folder:
alias zalias='vim ~/.zsh/aliases.zsh'

[ -e "${HOME}/.zsh/aliases.zsh"  ] && source "${HOME}/.zsh/aliases.zsh"

# Start rbenv
if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#legendary
echo "Syncing up your files with dropbox"
dropbox start

#wd() {
  #. /home/stephen/bin/wd/wd.sh
#}
