# Source oh-my-zsh if it is installed
if [[ -d $HOME/.oh-my-zsh ]]; then
    # Path to your oh-my-zsh configuration.
    ZSH=$HOME/.oh-my-zsh

    # Set name of the theme to load.
    ZSH_THEME="robbyrussell"

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Example format: plugins=(rails git textmate ruby lighthouse)
    plugins=(git python)

    # Load default oh-my-zsh stuff
    source $ZSH/oh-my-zsh.sh
fi

# Configuration
source ~/.aliases

# Things I don't want to publish to github
[[ -s "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"

# Always pushd when changing directory
setopt auto_pushd
setopt +o sharehistory

# Turn off autocorrect, it's wrong more than it's right for me
unsetopt correct_all

# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Add custom paths
export PATH=$PATH:$HOME/.dotfiles/bin

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

# Enable custom python shell script, enables ipython etc.
export PYTHONSTARTUP=~/.dotfiles/etc/pystartup.py

# virtualenv and pip settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src
source /usr/local/bin/virtualenvwrapper.sh

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
