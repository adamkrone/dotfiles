# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
DEFAULT_USER="adamkrone"

. `brew --prefix`/etc/profile.d/z.sh

# Files
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias kniferb="subl ~/.chef/knife.rb"

# Serve up local directory with python SimpleHTTPServer
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

# Ranger finder
alias ranger="~/ranger/ranger.py"

# Useful Ruby aliases
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

# Make dir and cd into it
mkcd() {
	mkdir -p "$@" && cd "$_";
}

# Marks
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function mark { 
		    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark { 
    rm -i "$MARKPATH/$1"
}

function marks {
    \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}

function _completemarks {
  reply=($(ls $MARKPATH))
}

compctl -K _completemarks jump
compctl -K _completemarks unmark

# Pretty Cat
function pcat() {
  pygmentize -f terminal256 -O style=native -g $1 | less;
}
alias cat=pcat

#Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx rails git github mercurial vagrant rsync web-search dircycle)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/local/share/npm/bin:/usr/local/deployd/bin:/usr/local/share/python:/usr/texbin:/usr/bin:/bin:/usr/sbin:/sbin

export EDITOR="vim"

source $HOME/.rvm/scripts/rvm
rvm use default

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export GOPATH=$HOME/go
PATH=$PATH:$GOPATH/bin

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export GPG_TTY=`tty`

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/mc mc

source ~/knife-completion.bash
