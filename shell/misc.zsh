# Exports
export DATE_FORMAT=$(date +%Y-%m-%d-%H-%M-%S)

# Personal preferences
rc() {
  nano $ZSH_CUSTOM/$1.zsh
}
alias rc=rc
alias rezsh='for f in $ZSH_CUSTOM/*.zsh; do echo "Loading $f"; . $f; done'
lzsh() {
  less $ZSH_CUSTOM/$1.zsh
}
alias lzsh=lzsh
lzshg() {
  lzsh $1 | shift & grep $@
}
alias lzshg=lzshg

# Memory jogs
alias lines='echo "cat -n FILE"'
alias fixmonitor='echo "http://www.ireckon.net/2013/03/force-rgb-mode-in-mac-os-x-to-fix-the-picture-quality-of-an-external-monitor"; echo "/System/Library/Displays/Overrides/DisplayVendorID-469/DisplayProductID-22fd"'
alias fixeclipse='rm ~/Dev/Workspaces/EclipseAndroid/.metadata/.plugins/org.eclipse.e4.workbench/workbench.xmi'
