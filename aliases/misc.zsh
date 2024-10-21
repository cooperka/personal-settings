# --- Exports

export DATE_FORMAT=$(date +%Y-%m-%d-%H-%M-%S)

# --- Personal preferences

rc() {
  ${EDITOR:-vim} ${ZSH_CUSTOM}/$1.zsh
}

rezsh() {
  for file in ${ZSH_CUSTOM}/*.zsh; do
    echo "Loading ${file}"
    source "${file}"
  done
}
lzsh() {
  less ${ZSH_CUSTOM}/$1.zsh
}
gzsh() {
  if type ag > /dev/null; then
    ag $1 ${ZSH_CUSTOM}/*.zsh
  else
    echo "No silver searcher installed! Falling back..."

    for file in ${ZSH_CUSTOM}/*.zsh; do
      echo "-- ${file} --"
      less ${file} | grep $1
    done
  fi
}

pull-aliases() {
  export TEMP=`pwd`
  cd ~/dev/personal-settings/aliases
  pwd
  gpl
  # cd ~/dev/cribspot/cribspot-aliases
  # pwd
  # gpl
  # cd ~/dev/wecount/wecount-aliases
  # pwd
  # gpl
  cd ${TEMP}
}
alias pla='pull-aliases'

# --- Copy/paste with pipes

alias c='xclip'
alias cc='xclip -selection clipboard'
alias v='xclip -o'

# --- Security

# share() {
#   pbpaste > /tmp/secret.txt
#   echo "Uploading: `cat /tmp/secret.txt`"
#   ffsend upload /tmp/secret.txt --copy -d 1 -e $1 ${@:2:99}
# }
# alias share5m='share 5m'
# alias share1d='share 1d'
# alias sharePass='share1d --password'

# --- Misc.

alias get-ip='ipconfig getifaddr en0'

# --- Memory jogs

alias lines='echo "cat -n FILE"'
alias fix-monitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fix-eclipse='echo "rm ~/dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi"'
alias fix-xcode='echo "rm -rf $HOME/Library/Developer/Xcode/DerivedData"'
ios-dir() {
  echo 'Pause simulator, then `po NSHomeDirectory()`'
}
nvm-upgrade() {
  echo 'To upgrade, `cd ~/.nvm && git pull` then checkout the latest tag'
}
mac-mount() {
  echo 'diskutil list
sudo umount /dev/disk3 # Unmount the veracrypt mounted volume
sudo /usr/local/bin/ntfs-3g /dev/disk3 /Volumes/NTFS -olocal -oallow_other # Remount it with read/write access'
}
remap() {
  echo 'To remap mouse buttons:
xinput list # Find devices
xinput list NUM | grep state # Find active button numbers for current device
xinput set-button-map NUM 1 2 3 4 5 0 0 # Remap buttons, 0 to disable'
}
