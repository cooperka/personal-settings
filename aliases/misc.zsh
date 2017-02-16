# Exports
export DATE_FORMAT=$(date +%Y-%m-%d-%H-%M-%S)

# Personal preferences
rc() {
  ${EDITOR:-vim} ${ZSH_CUSTOM}/$1.zsh
}
alias rezsh='for f in ${ZSH_CUSTOM}/*.zsh; do echo "Loading ${f}"; source ${f}; done'
lzsh() {
  less ${ZSH_CUSTOM}/$1.zsh
}

# Copy/paste with pipes
alias c='xclip'
alias cc='xclip -selection clipboard'
alias v='xclip -o'

# Memory jogs
alias lines='echo "cat -n FILE"'
alias fix-monitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fix-eclipse='echo "rm ~/Dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi"'
alias fix-xcode='echo "rm -rf /Users/klap-hotel/Library/Developer/Xcode/DerivedData"'
ios-dir() {
  echo 'Pause simulator, then `po NSHomeDirectory()`'
}
