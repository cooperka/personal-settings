# Misc. paths
addpath ~/sdk/redis-3.2.3/src
addpath ~/Applications/anaconda3/bin

# WebStorm
# https://youtrack.jetbrains.com/issue/IDEA-78860
export IBUS_ENABLE_SYNC_MODE=1
export WS_DIR="~/Applications/WebStorm-11"
alias ws="sh $WS_DIR/bin/webstorm.sh"

# Android
export AS_DIR=~/Applications/android-studio
alias and="sh $AS_DIR/bin/studio.sh"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH" # Ruby shims must come first in path
eval "$(rbenv init -)"
