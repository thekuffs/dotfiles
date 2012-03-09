# Source oh-my-zsh if it is installed
if [[ -d $HOME/.oh-my-zsh ]]; then
  # Path to your oh-my-zsh configuration.
  ZSH=$HOME/.oh-my-zsh
  
  # Set name of the theme to load.
  ZSH_THEME="robbyrussell"
  
  # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
  # Example format: plugins=(rails git textmate ruby lighthouse)
  plugins=(git python github)
  
  # Load default oh-my-zsh stuff
  source $ZSH/oh-my-zsh.sh
fi

# Configuration
source ~/.aliases

# Things I don't want to publish to github
[[ -s "$HOME/.secrets" ]] && source "$HOME/.secrets"

# Vim mode
bindkey -v

# Always pushd when changing directory
setopt auto_pushd

# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Add custom paths
export PATH=/usr/local/bin:$PATH:$HOME/bin

# Better color settings for ls output.
export LSCOLORS=ExFxCxDxBxegedabagacad

# Less Colors for Man Pages
# http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;33;246m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
