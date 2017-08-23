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

# --- Copy/paste with pipes

alias c='xclip'
alias cc='xclip -selection clipboard'
alias v='xclip -o'

# --- Misc.

alias get-ip='ipconfig getifaddr en0 | pbcopy && echo "Copied."'

# --- Memory jogs

alias lines='echo "cat -n FILE"'
alias fix-monitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fix-eclipse='echo "rm ~/dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi"'
alias fix-xcode='echo "rm -rf /Users/klap-hotel/Library/Developer/Xcode/DerivedData"'
ios-dir() { echo 'Pause simulator, then `po NSHomeDirectory()`' }
nvm-upgrade() { echo 'To upgrade, `cd ~/.nvm && git pull` then checkout the latest tag' }
mac-mount() {
  echo 'diskutil list
sudo umount /dev/disk3 # Unmount the veracrypt mounted volume
sudo /usr/local/bin/ntfs-3g /dev/disk3 /Volumes/NTFS -olocal -oallow_other # Remount it with read/write access'
}
