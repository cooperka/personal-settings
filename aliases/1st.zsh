export SETTINGS_REPO_DIR="$HOME/dev/personal/personal-settings"

# Echo to stderr.
echoerr() {
  cat <<< "$@" 1>&2
}
alias err=echoerr

# Add a dir to the path (if it exists and isn't already added).
addpath() {
  if [ -d "$1" ]; then
    if [[ ":$PATH:" != *":$1:"* ]]; then
      PATH="${PATH:+"$PATH:"}$1"
    fi
  else
    err "Not a directory: $1"
  fi
}

# Make a string replacement in ALL files RECURSIVELY starting in the current directory.
# For safety, this ignores files within hidden '.git' directories, and only works inside a git repo.
#
# @param $1 - The string to find.
# @param $2 - The string to replace each occurrence of $1 with.
sed-recursive() {
  git status > /dev/null && \
  find . -type f -not -path '*.git/*' -print0 | xargs -0 sed -i '' "s/$1/$2/g"
}
alias sr=sed-recursive

# TODO: This is hacky, just use CLI options.
sed-recursive-dir() {
  # Execute in a subshell so 'cd' doesn't affect the caller.
  zsh -c 'source ~/.oh-my-zsh/custom/1st.zsh; export LC_ALL=C; cd $1 && sed-recursive $2 $3' $0 $@
}
alias srd=sed-recursive-dir
