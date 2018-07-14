# Git aliases
#
# Note: Most of these (but not all) are Zsh defaults with the `git` plugin.
# I explicitly added them here for reference, since some are overridden.
#
# It's also nice to have these for when the shell isn't Zsh (e.g. in MinGW).
#
diffs() {
  git log $1..origin/master --author=cooperka
}
alias g='git'
alias gst='git status'
alias gh='git help'
alias gl='git log'
alias glp='git log --patch'
alias gs='git log -S' # Find commits with string added/removed in diff
alias gsg='git log -G' # Find commits with regex string anywhere in changed lines
alias grl='git reflog'
alias gco='git checkout'
alias gcob='git branch; git checkout -b'
alias gcm='git checkout master'
alias gcs='git checkout stable'
alias gcd='git checkout dev'
alias gcdv='git checkout development'
alias gcdf='git checkout dogfood'
alias gcl='git clone --recursive'
alias gb='git branch'
alias gbum='git branch -u origin/master master' # Set upstream
alias ga='git add'
alias gaa='git add -A; git add -u; git status'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gc@='git commit -v --amend --no-edit'
gcw() {
  # "Work in progress" sort of commit.
  git commit -m "🚧  $@"
}
alias gp='echo "gps: git push, gpl: git pull"'
alias gps='git push'
alias gpso='git push origin'
alias gpsoh='git push origin HEAD'
alias gf='git fetch'
alias gpl='git pull'
alias gploh='git pull origin HEAD'
alias gplr='git pull --rebase'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git diff --stat'
alias gdm='git diff master'
alias gm='git merge'
alias gmm='git merge master'
alias gsta='git stash'
alias gstl='git stash list'
alias gsts='git stash save'
alias gstp='git stash pop'
alias gstd='echo "Dangerous! Try gsta drop instead."'
alias gstc='echo "Dangerous! Try gsta clear instead."'
alias grs='git reset'
alias grsh='git reset HEAD'
alias grsh1='git reset HEAD^'
alias grhs1='grsh1'
alias grsH='git reset --hard'
alias grsm='git reset --hard origin/master'
alias grshm=grsm
alias grshom=grsm
grhhdir() {
  # grhh for each subdirectory
  ls -d */ | awk '{print $NF}' | xargs -n1 sh -c 'cd $0 && pwd && git reset HEAD --hard'
}
alias grt='git revert'
alias grb='git rebase'
alias grbm='git rebase master'
alias grbd='git rebase dev'
alias grbdv='git rebase development'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias gcp='git cherry-pick'
alias gcpm='gcp -m 1'
alias gcpc='gcp --continue'
alias gcpa='gcp --abort'
alias gfp='git format-patch'
alias gap='git apply'
alias gam='git am' # 'Apply Mailbox'
alias gamc='git am --continue'
alias gams='git am --skip'
alias gama='git am --abort'
alias grm='git rm'
alias grem='git remote'
grema() {
  local repo
  if [ -z $2 ]; then
    repo=`basename $(git rev-parse --show-toplevel)`
  else
    repo=$2
  fi

  echo "Adding $1/${repo}"
  git remote add $1 git@github.com:$1/${repo}.git
}
alias gt='git tag'
alias grp='git rev-parse'
alias grph='git rev-parse HEAD'
alias grpm='git rev-parse master'
alias grpom='git rev-parse origin/master'
alias grls='git rev-list'
alias grlsc='git rev-list --count'
alias gas='echo "Consider --skip-worktree instead!"; git update-index --assume-unchanged'
alias gnas='echo "Consider --no-skip-worktree instead!"; git update-index --no-assume-unchanged'
alias gsw='git update-index --skip-worktree'
alias gig='gsw'
alias gnsw='git update-index --no-skip-worktree'
alias gbs='git bisect'
alias gsm='git submodule'
alias gsmu='git submodule update'
alias gcl='git clone --recursive'
alias gcfg='git config'
alias gcfgg='git config --global'
alias gplkc='git pull kc HEAD'
alias gpskc='git push -f kc HEAD'

alias branch='git rev-parse --abbrev-ref HEAD'

gcof() {
  if [ $1 ]; then
    git fetch
    git checkout -B $1 origin/$1
  fi
}

pushtag() {
  if [ $1 ]; then
    git tag $1
    git push origin tags/$1
  fi
}

# Memory jogs
alias upstream='echo "git branch --set-upstream-to origin/branchName OR git branch -u origin/branchName OR git push -u origin branchName"'
alias bisect='echo "gbs start\ngbs good fd0a623\ngbs bad 256d850\ngbs good\ngbs bad\ngbs reset"'
pullify() {
  echo "git config --global --add remote.origin.fetch \"+refs/heads/*:refs/remotes/origin/*\""
  echo "git config --global --add remote.origin.fetch \"+refs/pull/*/head:refs/remotes/origin/pr/*\""
  echo "git config --global --add remote.origin.fetch \"+refs/merge-requests/*/head:refs/remotes/origin/mr/*\""
  echo "git config --global --add remote.kc.fetch \"+refs/heads/*:refs/remotes/kc/*\""
  echo "git config --global --add remote.kc.fetch \"+refs/pull/*/head:refs/remotes/kc/pr/*\""
  echo "git config --global --add remote.kc.fetch \"+refs/merge-requests/*/head:refs/remotes/kc/mr/*\""
  echo "git config --global --edit"
  echo "git config --global --list"
}
git-patch() {
  echo "git diff > fix.patch"
  echo "git format-patch HEAD^ --stdout > fix.patch"
  echo "git format-patch HEAD^ -o fix/"
  echo "git apply --stat fix.patch # Preview the changes"
  echo "git am fix.patch # Meaning 'Apply Mailbox', optionally with --signoff (-s)"
}
alias patch-git=git-patch
