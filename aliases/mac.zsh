# Add homebrew to path (for M1)
eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Initialize nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Initialize rbenv
eval "$(rbenv init - zsh)"

# Add psql to path (using external postgres app)
addpath '/opt/homebrew/opt/libpq/bin'

# Add pythons to path
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"

# `brew install coreutils` first.
alias readlink=greadlink

# e.g. benchmark -n 3 -c "echo test" && cat benchmark_results.csv
alias benchmark='$SETTINGS_REPO_DIR/aliases/benchmark.sh'
