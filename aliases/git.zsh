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
alias glp='git log -p'
alias grl='git reflog'
alias gco='git checkout'
alias gcob='git branch; git checkout -b'
alias gcm='git checkout master'
alias gcs='git checkout stable'
alias gcd='git checkout dev'
alias gcdv='git checkout development'
alias gcdf='git checkout dogfood'
alias gcl='git clone --recursive'
alias ga='git add'
alias gaa='git add .; git add -u; git status'
alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gc@='git commit -v --amend --no-edit'
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
alias gdm='git diff master'
alias gm='git merge'
alias gmm='git merge master'
alias gsta='git stash'
alias gstl='git stash list'
alias gsts='git stash save'
alias gstp='git stash pop'
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
alias grm='git rm'
alias grem='git remote'
alias gt='git tag'
alias gbs='git bisect'
alias gsm='git submodule'
alias gsmu='git submodule update'
alias gcl='git clone --recursive'
alias gplkc='git pull kc HEAD'
alias gpskc='git push -f kc HEAD'
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
alias upstream='echo "git branch --set-upstream branchName origin/branchName OR git branch -u origin/branchName OR git push -u origin branchName"'
alias bisect='echo "gbs start\ngbs good fd0a623\ngbs bad 256d850\ngbs good\ngbs bad\ngbs reset"'
alias pullify='echo "git config --global --add remote.origin.fetch \"+refs/pull/*/head:refs/remotes/origin/pr/*\""'
