addpath '/Users/klap-hotel/Library/Python/2.7/bin'
source "$HOME/.cargo/env"

# Default JDK path.
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home'

# Major speedup + don't break old dependencies
export HOMEBREW_NO_AUTO_UPDATE=1

# `brew install coreutils` first.
alias readlink=greadlink
