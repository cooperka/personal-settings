#addpath '/Users/klap-hotel/Library/Python/2.7/bin'
#source "$HOME/.cargo/env"

# Default JDK path.
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-11.0.13.jdk/Contents/Home'

# Major speedup + don't break old dependencies
# Note: This was discouraged in brew v4 and shouldn't be needed anymore.
#export HOMEBREW_NO_AUTO_UPDATE=1

# Old homebrew location before moving to M1 /opt/homebrew/bin
alias oldbrew=/usr/local/bin.old/brew

# Add homebrew to path (for M1)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Use homebrew's llvm instead of Mac's
# (fixes compiler issues with several gems and yarn)
export PATH="/opt/homebrew/opt/llvm/bin:$PATH" # Must be FIRST (not last)
#addpath "/opt/homebrew/opt/llvm/bin"
#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export CC="/opt/homebrew/bin/gcc"
export CXX="/opt/homebrew/bin/g++ -std=c++17"
export CFLAGS='-std=c++17'

# Initialize nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Initialize rbenv
eval "$(rbenv init - zsh)"

# Add pythons to path
export PYENV_ROOT="$HOME/.pyenv"
addpath "$PYENV_ROOT/bin"
eval "$(pyenv init -)"

# `brew install coreutils` first.
alias readlink=greadlink

alias benchmark='$SETTINGS_REPO_DIR/aliases/benchmark.sh'
