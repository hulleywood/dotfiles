# $VARIABLE will render before the rest of the command is executed
echo "Logged in as $USER at $(hostname)"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export NVM_DIR="/root/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PS1="\[\033[00m\]\u@\h\[\033[01;33m\] \w \[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

# Rbenv autocomplete and shims
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Path for RBENV
test -d $HOME/.rbenv/ && PATH="$HOME/.rbenv/bin:$PATH"

# Path for RVM
test -d $HOME/.rvm/ && PATH="$HOME/.rvm/bin:$PATH"
if test -f ~/.rvm/scripts/rvm; then
  [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi

# Path for brew
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

export LSCOLORS=ExGxFxdxCxDxDxaccxaeex

# Set vim as default editor
export VISUAL=vim
export EDITOR="$VISUAL"

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -e ~/.bash_secrets ]; then
  source ~/.bash_secrets
fi
