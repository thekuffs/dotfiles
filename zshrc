# virtualenv and pip settings
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/src

export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true


# Add custom paths
export PATH=$PATH:$HOME/.dotfiles/bin:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

export EDITOR="vim"

if [[ -d $HOME/.oh-my-zsh ]]; then
    # Path to your oh-my-zsh configuration.
    ZSH=$HOME/.oh-my-zsh

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Example format: plugins=(rails git textmate ruby lighthouse)
    plugins=(vi-mode git python aws httpie nvm go virtualenvwrapper virtualenv k8s)
    export KEYTIMEOUT=1

    #POWERLEVEL9K_MODE="powerline"
    POWERLEVEL9K_MODE="awesome-fontconfig"
    # this shortens the prompt significantly
    POWERLEVEL9K_VCS_GIT_ICON=''
    POWERLEVEL9K_PYTHON_ICON=''
    POWERLEVEL9K_VCS_GIT_ICON=''
    POWERLEVEL9K_HOME_ICON=''
    POWERLEVEL9K_HOME_SUB_ICON=''
    POWERLEVEL9K_FOLDER_ICON=''
    POWERLEVEL9K_VIRTUALENV_BACKGROUND='green'
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(k8s virtualenv dir vcs)
    #POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(k8s)
    POWERLEVEL9K_DISABLE_RPROMPT=true
    POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
    POWERLEVEL9K_SHORTEN_DELIMITER=""
    POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
    ZSH_THEME="powerlevel9k/powerlevel9k"
    CASE_SENSITIVE="true"

    # Load default oh-my-zsh stuff
    source $ZSH/oh-my-zsh.sh
fi

# Configuration
source ~/.aliases
source ~/.functions

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

# Better color settings for ls output.
if [ "$(uname -s)test" = "Darwintest" ]; then
    export LSCOLORS=ExFxCxDxBxegedabagacad
    #export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
fi

if [[ -f .dircolors ]]; then
    eval $(dircolors .dircolors)
fi


# Less Colors for Man Pages
# http://linuxtidbits.wordpress.com/2009/03/23/less-colors-for-man-pages/
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;33;246m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline
