# Getting Started

Set your default shell to zsh and then install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):

    chsh -s /bin/zsh
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

Grab a clone of this repo and run the install script:

    git clone git@github.com:jonypawks/dotfiles.git
    cd dotfiles
    ./install.sh

Put your git(hub) user info along with any other machine specific environment settings in the file `~/.zshrc.local`:

    export GIT_AUTHOR_NAME="Your Name"
    export GIT_AUTHOR_EMAIL="your@email.address"
    export GIT_COMMITTER_NAME=$GIT_AUTHOR_NAME
    export GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL
    
    export GITHUB_USER=your_username
    export GITHUB_TOKEN=your_token

