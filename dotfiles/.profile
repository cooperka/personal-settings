# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# only if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"
fi

# only if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # Google Cloud SDK.
    [ -f "$HOME/sdk/google-cloud-sdk/path.zsh.inc" ] && source "$HOME/sdk/google-cloud-sdk/path.zsh.inc"
    [ -f "$HOME/sdk/google-cloud-sdk/completion.zsh.inc" ] && source "$HOME/sdk/google-cloud-sdk/completion.zsh.inc"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# nvm.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Rust.
export PATH="$HOME/.cargo/bin:$PATH"

# Travis gem.
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# Greeting.
echo "Welcome, ${USER}"
date
echo;
