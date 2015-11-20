[ -n "$PROFILE_LOADED" ] && return
PROFILE_LOADED='YES!'
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# include .local_path if it exists
if [ -f "$HOME/.local_path" ]; then
. "$HOME/.local_path"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#Promt
# include .prompt if it exists
if [ -f "$HOME/.prompt" ]; then
. "$HOME/.prompt"
fi

# Sphinx FIX
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [ -d "$HOME/.virtualenvs" ] ; then
    # Virtualenv envvars
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/dev
    export VIRTUAL_ENV_DISABLE_PROMPT='keep my prompt clean'
    source virtualenvwrapper.sh
fi

#rbenv bin dir
if [ -d "$HOME/.rbenv/bin" ] ; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi
