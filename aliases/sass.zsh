export SASS_DIR=~/dev/lsr/sassafras
export ODK_COLLECT_DIR=${SASS_DIR}/collect
export NEMO_DIR=${SASS_DIR}/nemo

alias sass='cd ${SASS_DIR}'
alias odkc='cd ${ODK_COLLECT_DIR}'
alias nemo='cd ${NEMO_DIR}'

alias nemos='nvm use && echo "\nCollect endpoint: http://YOURIP:8443/m/yourmission\n" && rails s -p 8443 -b 0.0.0.0'

# --- IntelliJ workspaces.

workspace-backup-collect () {
    cp ${ODK_COLLECT_DIR}/.idea/workspace{.xml,.xml.bak} && \
    echo "Saved backup at ${ODK_COLLECT_DIR}/.idea/workspace.xml.bak"
}
alias work-bak-odkc=workspace-backup-collect

workspace-restore-collect() {
  cp ${ODK_COLLECT_DIR}/.idea/workspace{.xml.bak,.xml} && \
  echo "Restored backup from ${ODK_COLLECT_DIR}/.idea/workspace.xml.bak"
}
alias work-restore-odkc=workspace-restore-collect
