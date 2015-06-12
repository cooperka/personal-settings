# Exports
export DATE_FORMAT=$(date +%Y-%m-%d-%H-%M-%S)
export ZSHRC=$ZSH_CUSTOM/alias.zsh
export PATH=$PATH:~/Dev/adt-bundle-mac/sdk/platform-tools:~/Dev/adt-bundle-mac/sdk/tools
export ANDROID_HOME=/Users/kcooper/Dev/adt-bundle-mac/sdk

# Device
alias pic="adb -e shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Pictures/ss-emulator/ss_$DATE_FORMAT.png"
alias pics='adb -d pull /sdcard/Pictures/Screenshots/ ~/Pictures/ss-device'
alias records='adb -d pull /sdcard/media/ ~/Pictures/record-device'
alias stopd='adb -d shell am force-stop' # $1: Package name
alias stope='adb -e shell am force-stop' # $1: Package name
alias record='adb -d shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'
alias recorde='adb -e shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'

# Git
diffs() {
  git log $1..origin/master --author=kcooper
}
alias diffs=diffs
alias gh='git help'
#alias gb='git branch'
#alias gs='git status'
alias gl='git log'
alias glp='git log -p'
#alias glo='git log --oneline'
#alias gla='git log --decorate --all --graph --pretty=oneline --abbrev-commit'
#alias gch='git checkout'
alias gcob='git branch; git checkout -b'
alias gcm='git checkout master'
alias gcs='git checkout stable'
alias gcd='git checkout dev'
alias gcdv='git checkout development'
#alias ga='git add'
alias gaa='git add .; git add -u; git status'
#alias gcm='git commit'
#alias gcma='git commit -am'
alias gp='echo "gps: git push, gpl: git pull"'
alias gps='git push'
#alias gpso='git push origin'
#alias gpsoh='git push origin HEAD'
alias gf='git fetch'
alias gpl='git pull'
#alias gploh='git pull origin HEAD'
#alias gd='git diff'
alias gdc='git diff --cached'
alias gdm='git diff master'
#alias gm='git merge'
alias gmm='git merge master'
alias gmom='git merge origin/master'
#alias gst='git stash'
alias gstl='git stash list'
alias gsts='git stash save'
#alias gstp='git stash pop'
alias grs='git reset'
alias grsh='git reset HEAD'
alias grsh1='git reset HEAD^'
alias grhs1='grsh1'
alias grt='git revert'
alias grb='git rebase'
alias grbm='git rebase master'
alias grbd='git rebase dev'
#alias grbc='git rebase --continue'
#alias gcp='git cherry-pick'
alias gcpm='gcp -m 1'
alias gcpc='gcp --continue'
alias gcpa='gcp --abort'
alias grm='git remote'
alias gbs='git bisect'
alias gplkc='git pull kc HEAD'
alias gpskc='git push -f kc HEAD'
pushtag() {
  git tag $1
  git push origin $1
}
alias pushtag=pushtag

# Personal preferences
#export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export EDITOR=nano
#alias bashrc='nano ~/.bashrc'
#alias rebash='source ~/.bashrc'
#alias bashview='more ~/.bashrc'
alias zshrc='nano $ZSHRC'
alias rezsh='source $ZSHRC'
alias lzsh='less $ZSHRC'
alias lzshg='lzsh | grep'

# Memory jogs
alias lines='echo "cat -n FILE"'
alias upstream='echo "git branch --set-upstream branchName origin/branchName OR git branch -u origin/branchName OR git push -u origin branchName"'
alias fixmonitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fixeclipse='rm ~/Dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi'
alias bisect='echo "gbs start\ngbs good fd0a623\ngbs bad 256d850\ngbs good\ngbs bad\ngbs reset"'
alias pullify='echo "git config --global --add remote.origin.fetch \"+refs/pull/*/head:refs/remotes/origin/pr/*\""'
alias single='echo "gradle -Dtest.single=SomeTest test"'
