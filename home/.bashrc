# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'

# Git aliases
alias grep="grep --color"
alias gst="git status"
alias gd="git diff --color"
alias gcb="git checkout -b"
alias gc="git checkout"
alias gam="git commit -am"

# Hide and show desktop icons
alias hd='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias sd='defaults write com.apple.finder CreateDesktop true; killall Finder'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
