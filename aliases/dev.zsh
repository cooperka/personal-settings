# Exports
addpath ~/sdk/android-sdk/platform-tools
addpath ~/sdk/android-sdk/tools
export ANDROID_HOME=~/sdk/android-sdk

# Yarn
alias yi='yarn install'
alias yu='yarn upgrade'
alias ya='yarn add --exact'
alias yad='yarn add --dev --exact'
alias yag='yarn global add'
alias yga='yarn global add'
alias yr='yarn remove'
alias yst='yarn start'
alias yt='yarn test'
alias lint='yarn run lint'
alias yru='yarn run'
alias yl='yarn list'
alias yln='yarn link'
alias yuln='yarn unlink'
alias ycc='yarn cache clean'
alias yw='yarn why'
alias ylic='yarn licenses ls'

# npm
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
alias nru='npm run'
alias nln='npm link'
alias nuln='npm unlink'
alias nlint='npm run lint'

# Android
alias pic="adb -e shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Pictures/ss-emulator/ss_${DATE_FORMAT}.png"
alias pics='adb -d pull -a /sdcard/Pictures/Screenshots/ ~/Pictures/ss-device'
alias pics-maint='adb -d pull -a /sdcard/Android/data/com.cribspot.maintenance/files/Pictures/ ~/Pictures/adb-maint'
alias records='adb -d pull -a /sdcard/media/ ~/Pictures/record-device'
alias record='adb -d shell screenrecord "/sdcard/media/screenrecord ${DATE_FORMAT}.mp4"'
alias recorde='adb -e shell screenrecord "/sdcard/media/screenrecord ${DATE_FORMAT}.mp4"'
alias menu='adb -d shell input keyevent KEYCODE_MENU'
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
