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

# Exports
addpath ~/Dev/adt-bundle-mac/sdk/platform-tools
addpath ~/Dev/adt-bundle-mac/sdk/tools
addpath ~/Dev/solr-6.0.0/bin
export ANDROID_HOME=/Users/kcooper/Dev/adt-bundle-mac/sdk

# Misc.
alias ni='npm i'
alias yni='ynpm i'
alias nup='npm update'
alias ynup='ynpm update'
alias nli='npm list'
alias ynli='ynpm list'
alias nst='npm start'
alias ynst='ynpm start'
alias nt='npm test'
alias ynt='ynpm test'

# Android
alias pic="adb -e shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Pictures/ss-emulator/ss_$DATE_FORMAT.png"
alias pics='adb -d pull /sdcard/Pictures/Screenshots/ ~/Pictures/ss-device'
alias records='adb -d pull /sdcard/media/ ~/Pictures/record-device'
alias record='adb -d shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'
alias recorde='adb -e shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'
stop() {
  if [ $# -eq 2 ]; then
    adb $1 shell am force-stop $2
  else
    adb shell am force-stop $1
  fi
}
install() {
  if [ $# -eq 2 ]; then
    adb $1 install -r -d $2
  else
    adb install -r -d $1
  fi
}
uninstall() {
  if [ $# -eq 2 ]; then
    adb $1 uninstall $2
  else
    adb uninstall $1
  fi
}

# Gradle
alias gradle='./gradlew'
alias gr='gradle'
single() {
  echo "Executing: gradle test --tests='*.$1Test'"
  gr test --tests="*.$1Test"
}
alias pkj='pkill java; gradle --stop'
alias pkjm=''

# Repo
alias rs='repo sync'
