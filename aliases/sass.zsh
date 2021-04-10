export SASS_DIR=~/dev/sassafras
export ODK_COLLECT_DIR=${SASS_DIR}/tcc/collect
export NEMO_DIR=${SASS_DIR}/tcc/nemo
export HB_DIR=${SASS_DIR}/hollaback

export AWS_DEFAULT_PROFILE=tcc

alias sass='cd ${SASS_DIR}'
alias odkc='cd ${ODK_COLLECT_DIR}'
alias nemo='cd ${NEMO_DIR}'

alias nemos='nvm use && echo "\nCollect endpoint: http://YOURIP:8443/m/yourmission\n" && rails s -p 8443 -b 0.0.0.0'

# Connect, with reminder to disconnect
alias vpnc='open http://timer-tab.com && vpn connect'

# --- Hollaback / HeartMob

alias hb='cd ${HB_DIR}/hb-web && nvm use'
alias hbs='hb && cd trellis && vagrant up && cd ../site/web/app/themes/hollaback-theme && npx gulp build && hb'

# --- Aggie

# addpath "$HOME/sdks/mongodb-2.6.12/bin"

# --- IntelliJ workspaces.

workspace-backup-collect() {
  cp ${ODK_COLLECT_DIR}/.idea/workspace{.xml,.xml.bak} && \
  echo "Saved backup at ${ODK_COLLECT_DIR}/.idea/workspace.xml.bak"
}
alias work-bak-odkc=workspace-backup-collect

workspace-restore-collect() {
  cp ${ODK_COLLECT_DIR}/.idea/workspace{.xml.bak,.xml} && \
  echo "Restored backup from ${ODK_COLLECT_DIR}/.idea/workspace.xml.bak"
}
alias work-restore-odkc=workspace-restore-collect
