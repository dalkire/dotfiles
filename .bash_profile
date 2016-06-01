export EDITOR=emacs
export VISUAL=emacs
export TERM=xterm-256color
export PATH="$PATH:/Users/dalkire/scripts:/Users/dalkire/pear/bin"

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
