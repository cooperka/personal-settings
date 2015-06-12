# Git aliases
diffs() {
  git log $1..origin/master --author=kcooper
}
alias diffs=diffs
alias gh='git help'
alias gl='git log'
alias glp='git log -p'
alias gcob='git branch; git checkout -b'
alias gcm='git checkout master'
alias gcs='git checkout stable'
alias gcd='git checkout dev'
alias gcdv='git checkout development'
alias gcdf='git checkout dogfood'
alias ga='git add'
alias gaa='git add .; git add -u; git status'
alias gp='echo "gps: git push, gpl: git pull"'
alias gps='git push'
alias gpso='git push origin'
alias gpsoh='git push origin HEAD'
alias gf='git fetch'
alias gpl='git pull'
alias gploh='git pull origin HEAD'
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
alias grsm='git reset --hard origin/master'
grhhdir() {
  # grhh for each subdirectory
  ls -d */ | awk '{print $NF}' | xargs -n1 sh -c 'cd $0 && pwd && git reset HEAD --hard'
}
alias grhhdir=grhhdir
alias grt='git revert'
alias grb='git rebase'
alias grbm='git rebase master'
alias grbd='git rebase dev'
alias grbdv='git rebase development'
alias gcp='git cherry-pick'
alias gcpm='gcp -m 1'
alias gcpc='gcp --continue'
alias gcpa='gcp --abort'
alias grm='git remote'
alias gbs='git bisect'
alias gplkc='git pull kc HEAD'
alias gpskc='git push -f kc HEAD'
gcof() {
  if [ $1 ]; then
    git fetch
    git checkout -B $1 origin/$1
  fi
}
alias gcof=gcof
pushtag() {
  if [ $1 ]; then
    git tag $1
    git push origin $1
  fi
}
alias pushtag=pushtag

# Memory jogs
alias upstream='echo "git branch --set-upstream branchName origin/branchName OR git branch -u origin/branchName OR git push -u origin branchName"'
alias bisect='echo "gbs start\ngbs good fd0a623\ngbs bad 256d850\ngbs good\ngbs bad\ngbs reset"'
alias pullify='echo "git config --global --add remote.origin.fetch \"+refs/pull/*/head:refs/remotes/origin/pr/*\""'
