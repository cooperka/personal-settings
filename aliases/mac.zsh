#addpath '/Users/klap-hotel/Library/Python/2.7/bin'
#source "$HOME/.cargo/env"

# Default JDK path.
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk-11.0.13.jdk/Contents/Home'

# Major speedup + don't break old dependencies
# Note: This was discouraged in brew v4 and shouldn't be needed anymore.
#export HOMEBREW_NO_AUTO_UPDATE=1

# Old homebrew location before moving to M1 /opt/homebrew/bin
alias oldbrew=/usr/local/bin/brew

# `brew install coreutils` first.
alias readlink=greadlink

alias benchmark='$SETTINGS_REPO_DIR/aliases/benchmark.sh'
