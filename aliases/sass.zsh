export SASS_DIR=~/dev/lsr/sassafras
export ODK_COLLECT_DIR=${SASS_DIR}/collect

alias sass='cd ${SASS_DIR}'
alias odkc='cd ${ODK_COLLECT_DIR}'

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
