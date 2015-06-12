# Exports
export PATH=$PATH:~/Dev/adt-bundle-mac/sdk/platform-tools:~/Dev/adt-bundle-mac/sdk/tools
export ANDROID_HOME=/Users/kcooper/Dev/adt-bundle-mac/sdk

# Android
alias pic="adb -e shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ~/Pictures/ss-emulator/ss_$DATE_FORMAT.png"
alias pics='adb -d pull /sdcard/Pictures/Screenshots/ ~/Pictures/ss-device'
alias records='adb -d pull /sdcard/media/ ~/Pictures/record-device'
alias record='adb -d shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'
alias recorde='adb -e shell screenrecord "/sdcard/media/screenrecord $DATE_FORMAT.mp4"'
stop() {
  if [ $# == 2 ]; then
    adb $1 shell am force-stop $2
  else
    adb shell am force-stop $1
  fi
}
alias stop=stop
install() {
  if [ $# == 2 ]; then
    adb $1 install -r -d $2
  else
    adb install -r -d $1
  fi
}
alias install=install
uninstall() {
  if [ $# == 2 ]; then
    adb $1 uninstall $2
  else
    adb uninstall $1
  fi
}
alias uninstall=uninstall

# Gradle
alias gradle='./gradlew'
alias gr='gradle'
single() {
  echo "Running: gr -Dtest.single=$1Test test"
  gr -Dtest.single=$1Test test
}
alias single=single
alias pkj='pkill java; gradle --stop'

# Repo
alias rs='repo sync'
