# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="norm"
DEFAULT_USER="adamkrone"

# Files
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias kniferb="subl ~/.chef/knife.rb"

# Projects
alias chef-repo="cd ~/Projects/chef"
alias chef-liferay="cd ~/Projects/chef-liferay"

# Vagrant Boxes
alias vgnt-precise64="cd ~/Vagrant/precise64"
alias vgnt-wordpress="cd ~/Vagrant/chef-wordpress"
alias vgnt-liferay="cd ~/Vagrant/chef-liferay"
alias vgnt-deployd="cd ~/Vagrant/chef-deployd"

# Serve up local directory with python SimpleHTTPServer
alias server='open http://localhost:8000 && python -m SimpleHTTPServer'

# Ranger finder
alias ranger="~/ranger/ranger.py"

# Make dir and cd into it
mkcd() {
	mkdir -p "$@" && cd "$_";
}

# Set to this to use case-sensitive completion
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
plugins=(git github mercurial vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting

export PATH=/usr/local/share/npm/bin:/usr/local/deployd/bin:/usr/local/share/python:$PATH

export EDITOR="subl -w"
