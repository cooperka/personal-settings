# For Android tools
export PATH=$PATH:~/Dev/adt-bundle-mac/sdk/platform-tools:~/Dev/adt-bundle-mac/sdk/tools
export ANDROID_HOME=/Users/kcooper/Dev/adt-bundle-mac/sdk

# Android aliases
alias pics='adb pull sdcard/Pictures/Screenshots/ ~/Downloads/ADB\ Screens'

# Git
diffs() {
  git log $1..origin/master --author=cooperka
}
alias diffs=diffs
alias gh='git help'
alias gb='git branch'
alias gs='git status'
alias gl='git log'
alias glp='git log -p'
alias glo='git log --oneline'
alias gla='git log --decorate --all --graph --pretty=oneline --abbrev-commit'
alias gch='git checkout'
alias gchb='git branch; git checkout -b'
alias gchm='git checkout master'
alias ga='git add'
alias gaa='git add .; git add -u; git status'
alias gcm='git commit'
alias gcma='git commit -am'
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
alias gst='git stash'
alias gstl='git stash list'
alias gsts='git stash save'
alias gstp='git stash pop'
alias grs='git reset'
alias grsh='git reset HEAD'
alias grb='git rebase'
alias grbm='git rebase master'
alias grbc='git rebase --continue'
alias gcp='git cherry-pick'
alias gbs='git bisect'

# Misc personal preferences
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export EDITOR=nano
alias bashrc='nano ~/.bashrc'
alias rebash='source ~/.bashrc'
alias bashview='more ~/.bashrc'

# Memory jogs
alias lines='echo "cat -n FILE"'
alias upstream='echo "git branch --set-upstream branchName origin/branchName OR git branch -u origin/branchName OR git push -u origin branchName"'
alias fixmonitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fixeclipse=echo 'rm ~/Dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi'
alias bisect='echo "gbs start\ngbs good fd0a623\ngbs bad 256d850\ngbs good\ngbs bad\ngbs reset"'
