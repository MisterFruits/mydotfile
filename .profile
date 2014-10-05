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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# MacPorts Installer addition on 2011-11-06_at_14:20:16: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#Cplex pour Pyton
#export PYTHONPATH=$PYTHONPATH:/Users/snivel/Applications/IBM/ILOG/CPLEX_Studio_Preview124/cplex/python/x86_darwin9_gcc4.0/


#Promt
PS1='\[\e[1;31m\]\u@\h:\[\e[01;34m\]\w\[\e[0m\]'
#PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\] \*$'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1=$PS1"\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
