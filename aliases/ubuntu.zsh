# Misc. paths
addpath "$HOME/sdk/redis-3.2.3/src"
addpath "$HOME/Applications/anaconda3/bin"

# Disable fwd/back on J-Tech Digital mouse at home.
xinput set-button-map 11 1 2 3 4 5 0 0 0 0 0 0 0 0

# WebStorm
# https://youtrack.jetbrains.com/issue/IDEA-78860
export IBUS_ENABLE_SYNC_MODE=1
export WS_DIR="$HOME/Applications/WebStorm-11"
alias ws="sh $WS_DIR/bin/webstorm.sh"

# Android
export AS_DIR=~/Applications/android-studio
alias and="sh $AS_DIR/bin/studio.sh"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH" # Ruby shims must come first in path
eval "$(rbenv init -)"

# Go
export GOPATH="$HOME/sdk/go"
addpath "$GOROOT/bin"
addpath "$GOPATH/bin"
