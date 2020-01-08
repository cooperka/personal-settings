# --- Exports

addpath "$HOME/sdks/android-sdk/platform-tools"
addpath "$HOME/sdks/android-sdk/tools"
addpath "$HOME/sdks/android-sdk/emulator"
addpath "`yarn global bin`"
export ANDROID_HOME="$HOME/sdks/android-sdk"

# --- Yarn

alias yi='yarn install'
alias yu='yarn upgrade'
alias ya='yarn add --exact'
alias yad='yarn add --dev --exact'
alias yg='yarn global'
alias yga='yarn global add'
alias ygl='yarn global list'
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

# --- npm

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

# --- Jest

alias ntu='npm run test -- --updateSnapshot'
alias ytu='yarn run test --updateSnapshot'

# --- React Native

alias rn='react-native'

# --- Ruby/rails

alias b='bundle'
alias bi='bundle install'
alias be='bundle exec'
alias bup='bundle update'
alias rs='be rails start'
alias rsp='rs -e production'
alias rsd='rs -e development'
alias con='be rails console'
alias rk='be rake'
alias spec='be rspec'
alias cop='be rubocop'
alias copa='cop --auto-correct'

# Insert a "@@@" placeholder in a file ($1) at a given line ($2) and column ($3).
insert_symbol() {
  gawk -i inplace -v "line=$2" -v "col=$3" 'NR != line { print; next } { re = ".{" col "}"; sub(re, "&@@@"); print }' $1
  echo "Modified $1"
}

# For a given rubocop rule ($1), annotate all violating files at the location of violation.
annotate_cops() {
  cop --only $1 --format emacs | gawk -F: -v "root=`pwd`/" '{ path = $1; sub(root, "", path); print "\\\"" path "\\\" " $2 " " $3 }' | xargs -I% sh -c "$(typeset -f insert_symbol); insert_symbol %"
}

# --- Ember

alias em='yarn run ember'

# @param $1 - The app package name, e.g. 'com.example.app'.
db-pull() {
  adb $2 pull "/data/data/$1/databases" ~/Downloads/adb/
}

# @param $1 - The app package name, e.g. 'com.example.app'.
db-push() {
  adb $2 push ~/Downloads/adb/databases/RKStorage* "/data/data/$1/databases/"
}

# --- Android

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

alias set-date-adb='adb shell "date `date +%m%d%H%M%Y.%S`"'
alias sda=set-date-adb

mv-icons() {
  echo "Moving '$2' icons under $1/android/app/src/main/res/ into mipmap folders..."
  echo "Hopefully they're named properly ('$2-hdpi.png' etc.)"
  cd $1/android/app/src/main/res/
  for type in mdpi hdpi xhdpi xxhdpi xxxhdpi
  do
    echo "Moving $2-${type}.png"
    mv -f $2-${type}.png mipmap-${type}/$2.png
  done
}

# --- Gradle

alias gradle='./gradlew'
alias gr='gradle'

single() {
  echo "Executing: gradle test --tests='*.$1Test'"
  gradle test --tests="*.$1Test"
}

alias pkj='pkill java; gradle --stop'
alias pkjm='' # pkj "maybe" (wrapper to toggle killing or not)

# --- Repo (no longer using)

#alias rs='repo sync'
