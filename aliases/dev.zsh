# Exports
addpath ~/Dev/sdk/android-sdk/platform-tools
addpath ~/Dev/sdk/android-sdk/tools
export ANDROID_HOME=~/Dev/sdk/android-sdk

# Misc.
alias ni='npm i'
alias nis='npm i --save'
alias nisd='npm i --save-dev'
alias nu='npm uninstall'
alias nus='npm uninstall --save'
alias nusd='npm uninstall --save-dev'
alias nup='npm update'
alias np='npm prune'
alias no='npm outdated'
alias nli='npm list'
alias nls='npm ls'
alias nst='npm start'
alias nt='npm test'
alias lint='npm run-script lint'

# Android
alias pic="adb -e shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Pictures/ss-emulator/ss_${DATE_FORMAT}.png"
alias pics='adb -d pull /sdcard/Pictures/Screenshots/ ~/Pictures/ss-device'
alias records='adb -d pull /sdcard/media/ ~/Pictures/record-device'
alias record='adb -d shell screenrecord "/sdcard/media/screenrecord ${DATE_FORMAT}.mp4"'
alias recorde='adb -e shell screenrecord "/sdcard/media/screenrecord ${DATE_FORMAT}.mp4"'
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
alias pkjm='' # pjk maybe (wrapper to toggle killing or not)

# Repo
alias rs='repo sync'
