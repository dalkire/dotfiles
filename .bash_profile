export EDITOR=emacs
export VISUAL=emacs
export TERM=xterm-256color
export PATH="$PATH:/Users/dalkire/scripts:/Users/dalkire/pear/bin"
export PATH="$PATH:/Applications/Racket v7.0/bin"

source ~/.git-prompt.sh

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "["${ref#refs/heads/}"]"
}
 
export PS1="\[\e[34m\]\u\[\e[m\]\[\e[35m\][\W]\[\e[m\]\[\e[36m\]\$(parse_git_branch)\[\e[35m\]:\[\e[m\] "

if [ -f ~/.bash_git ]; then
    source ~/.bash_git
fi

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

if [ -f ~/scripts/wf.sh ]; then
   source ~/scripts/wf.sh
fi

##
# Your previous /Users/dalkire/.bash_profile file was backed up as /Users/dalkire/.bash_profile.macports-saved_2018-02-20_at_10:13:05
##

# MacPorts Installer addition on 2018-02-20_at_10:13:05: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
