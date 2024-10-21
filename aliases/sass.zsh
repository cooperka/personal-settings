export SASS_DIR=~/dev/sassafras
export ODK_COLLECT_DIR=${SASS_DIR}/tcc/collect
export NEMO_DIR=${SASS_DIR}/tcc/nemo
export HB_DIR=${SASS_DIR}/hollaback
export RR_DIR=${SASS_DIR}/rita/realrisks

export AWS_DEFAULT_PROFILE=tcc

alias sass='cd ${SASS_DIR}'
alias odkc='cd ${ODK_COLLECT_DIR}'
alias nemo='cd ${NEMO_DIR}'

alias nemos='nvm use && echo "\nCollect endpoint: http://YOURIP:8443/m/yourmission\n" && be rails s -p 8443 -b 0.0.0.0'

# Connect, with reminder to disconnect
alias vpnc='open http://timer-tab.com && vpn connect'

# --- RealRisks

alias rr='cd ${RR_DIR}'

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
