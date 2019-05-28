#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

# git pull origin master;

function doIt() {
	cd dotfiles;
	rsync --exclude ".DS_Store" \
		-avh --no-perms . ~;
	cd ..;
	source ~/.bash_profile;

	cd sublime;
	rsync --exclude ".DS_Store" \
		-avh --no-perms . "$HOME/Library/Application Support/Sublime Text 3/Packages/User/";
	cd ..;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;