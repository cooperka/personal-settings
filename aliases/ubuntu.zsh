# Misc. paths
addpath "$HOME/sdks/redis-3.2.3/src"
addpath "$HOME/apps/anaconda3/bin"
addpath "$HOME/.local/bin"

# Disable fwd/back on J-Tech Digital mouse at home.
disable-mouse-extras() {
  local inputNum=`xinput list | grep "USB OPTICAL MOUSE" | sed -E 's/.*id=([0-9]+).*/\1/g'`
  xinput set-button-map ${inputNum} 1 2 3 4 5 0 0 0 0 0 0 0 0
}
disable-mouse-extras

# Python
alias python="$HOME/apps/anaconda3/bin/python"

# WebStorm
# https://youtrack.jetbrains.com/issue/IDEA-78860
export IBUS_ENABLE_SYNC_MODE=1
export WS_DIR="$HOME/apps/WebStorm-11"
alias ws="sh $WS_DIR/bin/webstorm.sh"

# Android
export AS_DIR="$HOME/apps/android-studio"
alias and="sh $AS_DIR/bin/studio.sh"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH" # Ruby shims must come first in path
eval "$(rbenv init -)"

# Go
export GOPATH="$HOME/sdks/go"
addpath "$GOROOT/bin"
addpath "$GOPATH/bin"
