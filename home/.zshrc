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

source "${HOME}/.zsh/zgen/zgen.zsh"

#if ! zgen saved; then
  #echo "Creating a zgen save"
  #zgen oh-my-zsh
  #zgen load rhysd/zsh-bundle-exec
  #zgen oh-my-zsh plugins/git
  #zgen oh-my-zsh plugins/ruby
  #zgen oh-my-zsh plugins/heroku
  #zgen oh-my-zsh plugins/command-not-found

  #zgen load djui/alias-tips
  #zgen load StackExchange/blackbox
  #zgen load ascii-soup/zsh-url-highlighter
  #zgen load Tarrasch/zsh-colors
  #zgen load tarruda/zsh-autosuggestions

   #Theme
  #zgen oh-my-zsh themes/fox
  #zgen oh-my-zsh themes/gnzh
  #zgen oh-my-zsh themes/Soliah
  #zgen oh-my-zsh themes/duellj

  #zgen load zsh-users/zsh-syntax-highlighting

   #nicoulaj's moar completion files for zsh
  #zgen load zsh-users/zsh-completions src

   #ZSH port of Fish shell's history search feature.
  #zgen load zsh-users/zsh-history-substring-search

   #Syntax highlighting bundle.
  #zgen load zsh-users/zsh-syntax-highlighting

  #zgen save
#fi


####################################
# END Plugins
####################################

####################################
# ZSH
####################################

export ZSH=/Users/stephen/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Beeps are annoying
setopt NO_BEEP

# ###################################
# Right Hand Prompt
# ###################################

# With a few commented out because I'm not willing to throw them away

#function zle-line-init zle-keymap-select {
  #VIM_NORMAL="%{$fg_bold[green]%} %{$bg[yellow]%} [% NORMAL]% %{$reset_color%}"
  #VIM_INSERT="%{$fg_bold[blue]%} [% INSERT]% %{$reset_color%}"
  #RPS1="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/$VIM_INSERT}"
  #zle reset-prompt
#}

function zle-line-init zle-keymap-select {
  #VIM_NORMAL="%{$fg_bold[white]%} %{$bg[yellow]%} NORMAL %{$reset_color%}"
  VIM_NORMAL="%{$fg_bold[yellow]%}-- NORMAL --"
  VIM_INSERT="%{$fg_bold[cyan]%}-- INSERT -- %{$reset_color%}"
  RPS1="${${KEYMAP/vicmd/$VIM_NORMAL}/(main|viins)/$VIM_INSERT}"
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

#Note: Bold text does not necessarily use the same colors as normal text. For example, $fg['yellow'] looks brown or a very dark yellow, while $fg_no_bold['yellow'] looks like bright or regular yellow.


#PROMPT="%{$bg[cyan]%}%{$fg[red]%}%n%{$reset_color%}%{$bg[cyan]%}@%{$fg[red]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%{$bg[cyan]%}%% "

#function zle-line-init zle-keymap-select {
  #VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
  #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $(git_custom_status) $EPS1"
  #zle reset-prompt
#}

#function zle-line-init zle-keymap-select {
    #RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    #RPS2=$RPS1
    #zle reset-prompt
#}

# ###################################
# Key Bindings
# ###################################

# Bindings for the command line

# As always...use vim!

setopt VI
export EDITOR=nvim
[ -z "$TMUX" ] && export TERM=xterm-256color

# timeout for key sequences
KEYTIMEOUT=40.0

# Use jk to exit insert mode
bindkey -M viins 'jk' vi-cmd-mode

bindkey -M viins '^J' history-search-forward
bindkey -M viins '^K' history-search-backward

# leave menu selection and accept entire command line after '^M'
# default behaviour only leaves menuselect; doesn't execute command line
#zmodload zsh/complist
#bindkey -M menuselect '^M' .accept-line

 ################################
# Aliases
# ################################

# To add new aliases or view current ones, go where they live--in the custom folder:
alias zalias='nvim ~/.zsh/aliases.zsh'

 ################################
# PATH
# ################################

export PATH="/usr/local/heroku/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games::$HOME/bin"

export PATH="$HOME/.bin:$PATH"
export NODE_PATH="/lib"

# If using rbenv for managing ruby versions, add it to the path
if [ -d "$HOME/.rbenv" ]; then
  export PATH="$PATH:$HOME/.rbenv/bin"
  export PATH="$PATH:$HOME/.rbenv/plugins/ruby-build/bin"
  export PATH="$PATH:$HOME/.rbenv/shims"
  export PATH="$PATH:$HOME/.rbenv/bin"
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR=vim
[ -z "$TMUX" ] && export TERM=xterm-256color

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


[ -e "${HOME}/.zsh/aliases.zsh"  ] && source "${HOME}/.zsh/aliases.zsh"

# Start rbenv
if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#echo "Syncing up your files with dropbox"
#dropbox start

#wd() {
  #. /home/stephen/bin/wd/wd.sh
#}

# For rmagick
export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# https://github.com/neovim/neovim/issues/2048#issuecomment-78045837
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti

# Codi
# Usage: codi [filetype] [filename]
codi() {
  vim $2 -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi ${1:-python}"
}
