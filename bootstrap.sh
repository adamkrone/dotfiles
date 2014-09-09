#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile

mv ~/com.googlecode.iterm2.plist ~/Library/Preferences/

getLatestVundle() {
  repo="~/.vim/bundle/Vundle.vim"
  url="https://github.com/gmarik/Vundle.vim.git"

  if cd $repo; then git pull; else git clone $url $repo; fi
}

getLatestVundle
vim +BundleInstall! +BundleClean +q
