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
